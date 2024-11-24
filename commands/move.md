---
title: MOVE
description: Moves relatively to your own player's current location
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
MOVE x y [accuracy] 

x - Number of tiles in x-axis, can be negative
y - Number of tiles in y-axis, can be negative
accuracy - Determines how accurately x/y point should be clicked - unit is tiles, higher number means less accurate
```

## Examples

```java
MOVE 5 1
MOVE -5 -5 2
```

## Notes

- MOVE 0 1 = North
- MOVE -1 0 = West
- MOVE 1 0 = East
- MOVE 0 -1 = South
- MOVE -1 1 = North-west
- MOVE 1 1 = North-east
- MOVE -1 -1 = South-west
- MOVE 1 -1 = South-east

## Demos

![](https://i.imgur.com/tl9EtDV.gif)

