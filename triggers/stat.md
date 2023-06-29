---
title: STAT
description: Triggers when skill is dropped below level target
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
STAT    skillName maxLevel [minLevel] 

skillName - Fully qualified skill name as seen ingame
maxLevel - Maximum level to consider valid for this trigger
minLevel - Minimum level to consider valid for this trigger

```

## Examples

```java
STAT ATTACK 95
STAT HITPOINTS 90 60
STAT HITPOINTS 60 40
```

## Notes

- When using skill name, double check that the name is right. For example runecraft instead of runecrafting

## Demos

![](https://1.imgur.com/ghs5wpn.gif)

