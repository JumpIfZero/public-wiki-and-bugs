---
title: NPC_DESPAWN
description: When the specified NPC despawns nearby, this trigger is hit.

parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax
```java
NPC_DESPAWN NPC_Name|NPC_ID
```

- **`NPC_Name`** : The string name of an NPC. When specifying an NPC by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`NPC_ID`** : The integer ID of an NPC.

## Examples

```java
NPC_DESPAWN Vet*
```

## Notes

- If more than one of the same NPC are nearby, matches the closest NPC to the player.

## Demo

![](https://1.imgur.com/K17U2BS.gif)
