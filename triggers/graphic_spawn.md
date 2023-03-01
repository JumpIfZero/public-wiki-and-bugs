---
title: GRAPHIC_SPAWN
description: When the specified graphic spawns nearby, this trigger is hit. 

parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
GRAPHIC_SPAWN Graphic_ID
```

-  **`Graphic_ID`** : The integer ID of a graphic.

## Examples

```java
// Ice Barage was cast on another player nearby
GRAPHIC_SPAWN 369
```

TODO: Other Examples

## Notes

- Although dev Tools is required to find specific IDs (graphic or animation), graphics are "external" to the player in most cases:
  - Someone casting aspell on the player (e.g., ice barrage).
  - An item adding something, such as Bloom cast with a silver sickle (b).
-  The RuneLite API documents a partial list of graphics in [Graphic_ID.java](https://github.com/runelite/runelite/blob/master/runelite-api/src/main/java/net/runelite/api/Graphic_ID.java).

## Demo

TODO: Demo