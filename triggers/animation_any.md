---
title: ANIMATION_ANY
description: When any nearby player or NPC performs the specified animation, this trigger is hit.
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
ANIMATION_ANY Animation_ID
```
- **`Animation_ID`** : The integer ID of an animation.

## Examples

```java
// Pray magic against Jad in the inferno Jad challenge
ANIMATION_ANY 7592
// Commands 
Sleep 600 700
PROTECT_FROM_MAGIC 1
```

## Notes

- Useful for auto prayers.

## Demos

![](https://1.imgur.com/5h9rGHn.gif)