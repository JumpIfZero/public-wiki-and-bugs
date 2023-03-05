#!/bin/bash



# Define regular expressions to match the desired elements
class_name_regex="^[A-Z_]+\s*$"
param_regex="^\* @param\s+(\w+)\s+(\w+)"
example_regex="^\*\s+@example\s+\{@code\s+(.*)\}"

# Initialize variables
class_desc=""
declare -A params
examples=()

# Loop over the lines in the input file
while IFS= read -r line; do
  # If the line starts with /**, the next line contains the class description
  if [[ $line =~ ^\/\*\*.*$ ]]; then
    read -r class_desc
    class_desc=$(echo "${class_desc}" | sed -E 's/^\*\s+//')
  # If the line matches the class name regex, extract the class name and print the previously extracted information
  elif [[ $line =~ $class_name_regex ]]; then
    if [[ -n $class_name ]]; then
      # Print the extracted information for the previous class
      echo "Class name: $class_name"
      echo "Class description: $class_desc"
      echo ""
      echo "Parameters:"
      for param_name in "${!params[@]}"; do
        param_required=$(echo "${params[$param_name]}" | cut -d "|" -f 1)
        param_desc=$(echo "${params[$param_name]}" | cut -d "|" -f 2)
        echo "- $param_name ($param_required): $param_desc"
      done
      echo ""
      echo "Examples:"
      for example in "${examples[@]}"; do
        echo "- $example"
      done
      echo ""
    fi
    # Reset variables for the new class
    class_name=$(echo "$line" | tr -d '[:space:]')
    class_desc=""
    params=()
    examples=()
  # If the line matches the param regex, extract the parameter name and description
  elif [[ $line =~ $param_regex ]]; then
    param_name=${BASH_REMATCH[1]}
    param_required=$(echo "${BASH_REMATCH[2]}" | tr -d '\n' | sed 's/^[[:space:]]*//')
    # Check if the parameter is required or optional
    if echo "${param_required}" | grep -q -i -E "^required$"; then
      param_required="Required"
    elif echo "${param_required}" | grep -q -i -E "^optional$"; then
      param_required="Optional"
    else
      param_required="Required"
    fi
    # Read the next line as the parameter description
    read -r param_desc_raw
    param_desc=$(echo "$param_desc_raw" | sed -E 's/^\s+?\*\s+//g')

    # Store the parameter name, required flag, and description in the "params" associative array
    params["$param_name"]="$param_required|$param_desc"
  # If the line matches the example regex, extract the example command and store it in an array
  elif [[ $line =~ $example_regex ]]; then
    examples+=("${BASH_REMATCH[1]}")
  fi
done <"input.txt"

# Print the extracted information for the last class

echo "Class name: $class_name"
echo "Class description: $class_desc"
echo ""
echo "Parameters:"
for param_name in "${!params[@]}"; do
  param_required=$(echo "${params[$param_name]}" | cut -d "|" -f 1)
  param_desc=$(echo "${params[$param_name]}" | cut -d "|" -f 2)
  echo "- $param_name ($param_required): $param_desc"
done
echo ""
echo "Examples:"
for example in "${examples[@]}"; do
  echo "- $example"
done
