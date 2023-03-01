---
title: SPELL
description: Casts a magic spell on your current target, on an item or object by name, or enables left-click casting.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax


```java
SPELL_NAME 1|Item_Name|Item_ID|Game_Object_Name|Game_Object_ID
```
- **`1`** : Enables left-click casting for the specified spell. Lasts until the player switches weapons, or until another plugin changes this setting.
- **`Item_Name`** : The string name of an item to cast the spell upon. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards.
- **`Item_ID`** : The integer ID of an item to cast the spell upon.
- **`Game_Object_Name`** : The string name of a game object to cast the spell upon. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Game_Object_ID`** : The integer ID of a game object to cast the spell upon.

## Examples

 
```java
// Enable left-click casting of Ice Barrage
ICE_BARRAGE 1
// Cast high alchemy on all arrows in the player's inventory
HIGH_LEVEL_ALCHEMY *arrows*
// Automagically cast Fire Surge on the currently targeted NPC.
FIRE_SURGE
```

## Notes


- If the player does not have a target, this command will do nothing. See **[TARGET_SET](#target_set)** for more information.

## Demos

 
![](https://i.imgur.com/NRkpH1J.gif)
_Left-click casting Fire Strike._

![](https://i.imgur.com/d7mHUfS.gif)
_Autocasting Fire Strike._

![](https://i.imgur.com/z3VPXS2.gif)
_High Level Alchemy._
