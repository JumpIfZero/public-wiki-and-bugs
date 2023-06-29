---
title: MOVE_TARGET
description: Moves relatively towards/away player's target current location
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
MOVE_TARGET x y [accuracy] 

x - Number of tiles away from target x-axis, can be negative
y - Number of tiles away from target y-axis, can be negative
accuracy - Determines how accurately x/y point should be clicked - unit is tiles, higher number means less accurate
```

## Examples

```java
MOVE_TARGET 5 1
MOVE_TARGET -5 -5 2
```

## Notes


## Demos

![](https://i.imgur.com/FPkTdTo.gif)

