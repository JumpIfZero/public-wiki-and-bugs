---
title: ANIMATION_SELF
description: When the specified animation starts on the player, this trigger is hit.
parent: Triggers
---

# {{ page.title }}

*{{ page.description }}*

## Syntax

```java
ANIMATION_SELF Animation_ID
```

- **`Animation_ID`** : The integer ID of an animation.

## Examples

```java
// Trigger when the player digs with a spade
ANIMATION_SELF 830
```

## Notes

-  To find an animation ID, use Kittykeys -> Settings -> Print events to chat. Animation IDs are also shown with Dev tools -> Players or NPCs (if using dev tools, _A_ holds the current animation ID).

## Demos

![](https://1.imgur.com/fiC1nS2.gif)