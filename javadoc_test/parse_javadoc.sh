#!/bin/bash

# initialize command_name variable to an empty string
command_name=''

#!/bin/bash

while IFS= read -r line; do
    if [[ "$line" =~ ^([A-Z_]+) ]]; then
        echo "# ${BASH_REMATCH[1]}"
    elif [[ "$line" =~ ^\/\*\*$ ]]; then
        echo ""
        echo "${line:2:-2}"
    elif [[ "$line" =~ ^\*\ @param[[:space:]]+(\w+)[[:space:]]+(required|optional)$ ]]; then
        echo "- \`${BASH_REMATCH[1]}\` \(${BASH_REMATCH[2]}\): "
    elif [[ "$line" =~ ^\*\ @param[[:space:]]+(\w+)[[:space:]]+(required|optional)[[:space:]]+(.*)$ ]]; then
        echo "- \`${BASH_REMATCH[1]}\` \(${BASH_REMATCH[2]}\): ${BASH_REMATCH[3]# }"
    elif [[ "$line" =~ ^\*\ @example\s+\{\@code\s+(.+)\}$ ]]; then
        echo "#### Examples:"
        echo "\`\`\`"
        echo "${BASH_REMATCH[1]}"
        echo "\`\`\`"
    elif [[ "$line" =~ ^\* ]]; then
        echo "${line:2}"
    fi
done < input.txt > output.md
