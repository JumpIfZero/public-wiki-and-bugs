---
title: ISVAR
description: Aborts the execution of this script if your variable does not match to given value
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
ISVAR varName value [script] 

varName - Your variable name with exact name match
value - Value to check for
script - If script is about to abort, runs this script before ending
```

## Examples

```java
ISVAR myVar 10
ISVAR myVar -5
ISVAR myVar logs
ISVAR myVar myMuleRSN
ISVAR CURRENT_TASK 5 DEBUG aborting as current task is not 5
```

## Notes


## Demos

![](N/A)

