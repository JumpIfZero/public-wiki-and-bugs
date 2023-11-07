---
title: XP_DROP
description: Triggers when xp drop higher than value is received
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
XP_DROP [skillName] value 

skillName - Fully qualified skill name as seen ingame
value - Value to consider valid for this trigger
```

## Examples

```java
XP_DROP MAGIC 100
XP_DROP 1
XP_DROP STRENGTH >200
```

## Notes

- When using skill name, double check that the name is right. For example runecraft instead of runecrafting

## Demos

![](https://1.imgur.com/n4rJZFN.gif)

