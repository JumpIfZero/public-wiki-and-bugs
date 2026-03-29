---
title: TARGET_HP_PERCENTAGE
description: Triggers when your target's health percentage reaches the specified value
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
TARGET_HP_PERCENTAGE percentage 

percentage - Health percentage threshold (0-100)
```

## Examples

```java
TARGET_HP_PERCENTAGE <50
TARGET_HP_PERCENTAGE >=25
TARGET_HP_PERCENTAGE ==0
```

## Notes

- To use this trigger, you must have active target selected
- Works for both NPCs and Players
- Target health percentage is available in variable $TARGET_HP_PERCENTAGE

## Demos

![](N/A)

