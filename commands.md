---
title: Commands
description: ""
permalink: /commands
---

# Commands in Kittykeys
{: .no_toc }

## Table of Contents
{: .no_toc .text-delta }

1. TOC
{:toc}

----

Commands are the heart of all scripts, they are used as instructions that tell a script what to do next.

Kittykeys supports the following commands as documented below. If you have any questions, please join the [JumpIfZero Plugins Discord server](https://discord.gg/j6754fvqyn), and we'll be happy to help! :cat:

----

## CONSUME
_Clicks on the first occurrence of the inventory item(s)_

### Syntax: 
```jsonc
CONSUME Item_Name_1|Item_ID_1[,Item_Name_2|Item_ID_2,...] [Identifier]
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards.
- **`Item_ID`** : The integer ID of an item.
- **Multiple Items** _(Optional)_ : To specify multiple items that should all be consumed within a single game tick, separate each with a comma and no space. 
- **`Identifier`** _(Optional)_ : The integer value _Identifier_ can be used with a single item if the desired action is not the default action for that item (i.e., if it is not the left-click action). 

TODO: How to locate Identifier

### Examples: 
```jsonc
// Consume (click) the first occurrence of anything with "cake" somewhere in the name
CONSUME *cake*
// Guzzle the Dwarven rock cake. "Guzzle" has an Identifier of 4
CONSUME Dwarven_Rock_cake 4 
// This is equivalent, it also guzzles the Dwarven rock cake
CONSUME *Rock_cake 4
```

### Notes: 
- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, a wildcard is required. When consuming potions or multiple food items, use the names:

```jsonc
// GOOD: Consume the first available Sara brew (any dose)
CONSUME Saradomin_brew*
// GOOD: Triple eat in a single game tick
CONSUME Shark,Saradomin_brew*,*karambwan*
// BAD: Using the ID for Saradomin Brew(4) would ignore any 3-, 2-, or 1-dose brews. 
CONSUME 6685
```

### Demo:
![](https://i.imgur.com/1XR1b7s.gif)

----

## CONSUME_ALL
_Clicks once on each occurrence of the inventory item(s)._

### Syntax: 
```jsonc 
CONSUME_ALL Item_Name_1|Item_ID_1[,Item_Name_2|Item_ID_2,...] [Identifier]
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Item_ID`** : The integer ID of an item.
- **Multiple Items** _(Optional)_ : To specify multiple items that should all be consumed within a single game tick, separate each with a comma and no space. 
- **`Identifier`** _(Optional)_ : The integer value _Identifier_ can be used with a single item if the desired action is not the default action for that item (i.e., if it is not the left-click action). 

TODO: How to locate Identifier

### Examples: 
```jsonc 
// Drop all logs in the inventory. 7 is the Identifier for "drop".
CONSUME_ALL *logs* 7
```
### Notes: 
- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

### Demo: 
![](https://i.imgur.com/ISznuS5.gif)

----

## EMOTE
_Performs the emote with the specified name._

### Syntax:
```jsonc
EMOTE Emote_Name
```

- **`Emote_Name`** : The name of an emote to perform. When specifying an emote, use underscores instead of spaces, and do not use quotes.

### Examples:
```jsonc
// Dance like no one's watching
EMOTE Dance
// Show off your skillcape (does nothing if a skillcape is not equipped)
EMOTE Skill_Cape
```

### Notes:
- Only specify one emote per command.
```jsonc
// BAD: One command won't perform multiple emotes
EMOTE Dance,Bow
// GOOD: Use separate commands to perform a sequence of emotes
EMOTE Dance
EMOTE Bow
```

### Demo:  
![](https://i.imgur.com/3E6hRi4.gif)

----

## ITEM_USE
_Combines the first occurrence of inventory item 1 with the first occurrence of inventory item._

### Syntax:
```jsonc
ITEM_USE Item_Name_1|Item_ID_1 Item_Name_2|Item_ID_2
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Item_ID`** : The integer ID of an item.

### Examples:
```jsonc
// Attach a stack of feathers to a stack of dart tips (any type)
ITEM_USE Feather *Dart_tip*
// This example specifically uses a feather on Adamant dart tips.
// Remember: All integer IDs are unique!
ITEM_USE Feather 823
```

### Notes: 
- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

### Demo: 
![](https://i.imgur.com/7stedcZ.gif)

----

## ITEM_NPC
_Uses the first occurrence of an inventory item on your NPC target._

### Syntax:
```jsonc
ITEM_NPC Item_Name|Item_ID
```

### Example:
```jsonc
// Use noted bowstrings (1778) on the current target NPC
ITEM_NPC 1778
```

### Demo: 
![](https://i.imgur.com/hbRJSum.gif)

### Notes: 
- If the player does not have a target, this command will do nothing. See **[TARGET_SET](#target_set)** for more information.
- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

----

## ITEM_OBJECT
_Uses an inventory item on the first nearby occurrence of a game object._

### Syntax:
```jsonc
ITEM_OBJECT Item_Name|Item_ID Game_Object_ID
```
- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Item_ID`** : The integer ID of an item. 
- **`Game_Object_ID`** : The integer ID of a game object. Strings are not accepted.

### Examples: 
```jsonc
// Use Cannonball (item 1778) on a deployed Dwarf multicannon (object 26711) to refill it
ITEM_OBJECT 1778 26711
```

### Notes: 
- Because `Game_Object_ID` requires an integer ID, it is recommended to use the item's integer ID for this command as well. 
```jsonc
// GOOD: Both parameters are integer IDs (recommended)
ITEM_OBJECT 1778 26711
// GOOD: Item_name string and Game_Object_ID integer (NOT recommended)
ITEM_OBJECT Cannonball 26711
// BAD: Game_Object_ID must be an integer. This does NOT work
ITEM_OBJECT Cannonball Dwarf_multicannon
// BAD: Game_Object_ID must be an integer. This also does NOT work
ITEM_OBJECT 1778 Dwarf_multicannon
```

### Demo:

![](https://i.imgur.com/HOo155S.gif)

----

## MOVE
_Moves the player in a straight line, relative to the player's current position._

### Syntax:
```jsonc
MOVE X Y
```

### Examples:
```jsonc
// Move one tile up and one tile to the right
MOVE -1 -1

// Move six tiles down and one tile to the left
MOVE 6 1

// Move nine tiles to the right
MOVE 0 -9
```

### Notes:
- **`MOVE`** is best used over short distances, such as to step away from an area-of-effect (AOE) attack. For longer distances, consider using the **[SCENE_WALK](#SCENE_WALK)** command.
- The player's current position is treated as (0,0) on an invisible grid of world tiles. All movements are specified as _n_ tiles away from wherever the player is already standing on the X and Y axes. 
  - Positive X is Right. Negative X is Left.
  - Negative Y is Down. Positive Y is Up.
  - An X or Y value of 0 means "do not move" (left/right or up/down)

### Demo: 
![](https://i.imgur.com/tl9EtDV.gif)

----

## QUICK_PRAYER
_Activates, deactivates, or toggles the player's previously defined quick prayers._

### Syntax:
```jsonc
QUICK_PRAYER [0|1]
```
- **`0`** _(Optional)_ : Force the player's quick prayers OFF, regardless of the current state.
- **`1`** _(Optional)_ : Force the player's quick prayers ON, regardless of the current state.
- If no parameter is specified, this command will toggle the player's quick prayers to the opposite state.

----
## Examples: 
```jsonc
// Always disable quick prayers
QUICK_PRAYER 0
// Always enable quick prayers
QUICK_PRAYER 1
// Toggle (reverse) the current state of quick prayers
QUICK_PRAYER
```
### Notes:
- Requires quick prayers to be previously set. If there are no quick prayers configured, this command will do nothing.

### Demo: 
![](https://i.imgur.com/oOFjtej.gif)

----

## PRAYER
_Activates, deactivates, or toggles a prayer by name._

### Syntax:
```jsonc
PRAYER_NAME [0|1]
```
- **`PRAYER_NAME`** : The string name of a prayer. When specifying a prayer by name, use UPPERCASE with underscores instead of spaces, and do not use quotes.
- **`0`** _(Optional)_ : Force the named prayer OFF, regardless of its current state.
- **`1`** _(Optional)_ : Force the named prayer ON, regardless of its current state.
- If no second parameter is specified, this command will toggle the named prayer to the opposite state.

----
## Examples: 
```jsonc
// Always disable Protect from Melee
PROTECT_FROM_MELEE 0
// Always enable Protect from Melee
PROTECT_FROM_MELEE 1
// Toggle (reverse) the current state of Protect from Melee
PROTECT_FROM_MELEE
```

### Demo: 
![](https://i.imgur.com/tBxI1AB.gif)

----

## SLEEP
_Pauses the script for the given number of milliseconds, or for a random amount of time within the given range._

### Syntax:
```jsonc
SLEEP [Milliseconds|minMS] [maxMS]
```
- **`Milliseconds`** : If only a single parameter is supplied, the exact number of milliseconds to wait before continuing.
- **`minMS`** : When two values are supplied to the sleep command, this is the minimum number of milliseconds that the script will pause before continuing.
- **`maxMS`** : When two values are supplied to the sleep command, this is the maximum number of milliseconds that the script will pause before continuing.

### Examples:
```jsonc
// Wait exactly 750 milliseconds every time
SLEEP 750
// Wait for some time between half a second and 1.5 seconds
SLEEP 500 1500
```

### Notes:
- 1000 ms == 1 second. 500ms == 0.5 seconds.
- The average game tick is about 0.6 seconds (600ms), but this is not truly constant. 
  Consider using the **[TICK](#tick)** command instead if your actions depend on accurate game ticks.

----

## SPECIAL
_Activates the special attack ability of the currently equipped weapon, if available._

### Syntax: 
```jsonc
SPECIAL
```
- This command takes no arguments.

### Examples:
```jsonc
// Trigger the special attack ability
SPECIAL
```

### Notes:
- If the player's equipped weapon has no special attack ability, this command will do nothing.

<!-- TODO: Do we need a demo here? 
### Demo:
![](https://example.com/SPECIAL_demo.gif)
-->

----

## SPELL
_Casts a magic spell on your current target, on an item or object by name, or enables left-click casting._

### Syntax:
```jsonc
SPELL_NAME 1|Item_Name|Item_ID|Game_Object_Name|Game_Object_ID
```
- **`1`** : Enables left-click casting for the specified spell. Lasts until the player switches weapons, or until another plugin changes this setting.
- **`Item_Name`** : The string name of an item to cast the spell upon. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards.
- **`Item_ID`** : The integer ID of an item to cast the spell upon.
- **`Game_Object_Name`** : The string name of a game object to cast the spell upon. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Game_Object_ID`** : The integer ID of a game object to cast the spell upon.

### Examples: 
```jsonc
// Enable left-click casting of Ice Barrage
ICE_BARRAGE 1
// Cast high alchemy on all arrows in the player's inventory
HIGH_LEVEL_ALCHEMY *arrows*
// Automagically cast Fire Surge on the currently targeted NPC.
FIRE_SURGE
```

### Notes:
- If the player does not have a target, this command will do nothing. See **[TARGET_SET](#target_set)** for more information.

### Demo: 
![](https://i.imgur.com/NRkpH1J.gif)
_Left-click casting Fire Strike._

![](https://i.imgur.com/d7mHUfS.gif)
_Autocasting Fire Strike._

![](https://i.imgur.com/z3VPXS2.gif)
_High Level Alchemy._

----

## TARGET
_Clicks or interacts with the player's current target._ 

### Syntax:
```jsonc
TARGET [MenuAction]
``` 
- **`MenuAction`** _(Optional)_ : 

### Notes:
- If the player does not have a target, this command will do nothing. See **[TARGET_SET](#target_set)** for more information.

### Demo: 
![](https://i.imgur.com/PEXvs0S.gif)

----

## TARGET_SET
TARGET_SET - Used with NPC_SPAWN event, sets your target to the triggered NPC

----

## TARGET_UNSET
UNSET_TARGET - Unsets your current target

### Notes:
- If the player does not have a target, this command will do nothing. See **[TARGET_SET](#target_set)** for more information.

----

## WALK_TARGET
WALK_TARGET - Walks under your target's current location coordinates

### Notes: 
- If the player does not have a target, this command will do nothing. See **[TARGET_SET](#target_set)** for more information.

TODO: Demo?

----

## UNEQUIP
UNEQUIP Item_Name_1|Item_ID_1 - Unequips gear from equipment tab. Example `UNEQUIP *mystic*`, `UNEQUIP *ring*`

### Demo: 
![](https://i.imgur.com/4Xqs5Zy.gif)

----

## WIELD
WIELD Item_Name_1|Item_ID_1,Item_Name_2|Item_ID_2 - Wields items from your inventory. Example `WIELD *mystic*`

### Demo: 
![](https://i.imgur.com/PMg4np5.gif)

----

## WITHDRAW
WITHDRAW Item_Name_1|Item_ID_1 AMOUNT - Withdraws items from your bank. Example `WITHDRAW water_rune 7`

### Demo: 
![](https://i.imgur.com/MJftNNl.gif)

----

## BANK_WIELD
BANK_WIELD Item_Name_1|Item_ID_1,Item_Name_2|Item_ID_2 - Wields items from your bank inventory. Example: `BANK_WIELD 4089,4113,4105,4097`

### Demo: 
![](https://i.imgur.com/dWYJiP8.gif)


----

## PICKUP
PICKUP [1] - Picks item up, only supported after item spawn trigger. Use 1 to telegrab instead of picking up by walking.

### Demo: 
![](https://i.imgur.com/UalPwFe.gif)

----

## GAME_OBJECT
GAME_OBJECT GameObjectName/Game_Object_ID [MenuAction] - Clicks on first game object found. Optional menuaction can be used if the wanted action is not the top (usually left click one). Example `GAME_OBJECT 12308`

### Demo: 
![](https://i.imgur.com/8G9ThTe.gif)


----

## WALL_OBJECT
WALL_OBJECT WallObjectName/WallObjectID [MenuAction] - Clicks on first wall object found. Optional menuaction can be used if the wanted action is not the top (usually left click one). Example `WALL_OBJECT *vein*`

----

## NPC

NPC NpcID [MenuAction] - Clicks on first NPC found. Optional menuaction can be used when for example thieving NPCs, leaving it out would try to attack it (usually left click option).

----

## CUSTOM
_Anything you can do, Kitties do better._

TODO: Separate page for a better CUSTOM walkthrough.

Kittykeys lets you perform ANY action, even if that action is not natively supported:

Go to Kittykeys -> Settings -> Debug -> Enable **Log clicks to chat**.

This allows you to see what the parameters for your click were. Typing the same numbers in CUSTOM action will repeat this. IMPORTANT! Do note that this will not work for things, where the identifier or parameters will change, such as clicking on game objects, inventory items in different slots etc. Those have their own command which you should use instead of this.

Example: "I want to toggle run, but there's no such command". Click on run and then see which numbers the plugin prints to your chat. Type these as custom command. 

### Demo: 
![](https://i.imgur.com/YbIhHM9.gif)