---
title: MOVE
description: Moves the player in a straight line, relative to the player's current position.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax


```java
MOVE X Y
```

## Examples


```java
// Move one tile up and one tile to the right
MOVE -1 -1

// Move six tiles down and one tile to the left
MOVE 6 1

// Move nine tiles to the right
MOVE 0 -9
```

## Notes


- **`MOVE`** is best used over short distances, such as to step away from an area-of-effect (AOE) attack. For longer distances, consider using the **[SCENE_WALK](#SCENE_WALK)** command.
- The player's current position is treated as (0,0) on an invisible grid of world tiles. All movements are specified as _n_ tiles away from wherever the player is already standing on the X and Y axes. 
  - Positive X is Right. Negative X is Left.
  - Negative Y is Down. Positive Y is Up.
  - An X or Y value of 0 means "do not move" (left/right or up/down)

## Demos

 
![](https://i.imgur.com/tl9EtDV.gif)
