---
title: VAR_CHANGED
description: Triggers when your own variables reaches matching value
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
VAR_CHANGED varName value 

varName - Your variable name with exact name match
value - Value to check for, can be negative
```

## Examples

```java
VAR_CHANGED myVar 50
VAR_CHANGED myVar >=0
VAR_CHANGED myVar !=10
VAR_CHANGED myVar -20
```

## Notes


## Demos

![](N/A)

