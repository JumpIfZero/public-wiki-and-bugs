---
title: STAT
description: Triggers when skill is at level target
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
STAT skillName level 

skillName - Fully qualified skill name as seen ingame
level - Level to consider valid for this trigger
```

## Examples

```java
STAT ATTACK 95
STAT HITPOINTS <=60
STAT MAGIC ==94
```

## Notes

- When using skill name, double check that the name is right. For example runecraft instead of runecrafting

## Demos

![](https://1.imgur.com/ghs5wpn.gif)

