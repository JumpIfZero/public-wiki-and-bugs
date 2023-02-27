---
title: Triggers
description: ""
permalink: /triggers
---

{: .warning }
This wiki is not complete (yet). Please refer to the Kittykeys editor's **Help** tab, or to the JZ plugin discord, for the most up-to-date information.

# Triggers in Kittykeys
{: .no_toc }

## Table of Contents
{: .no_toc .text-delta }

1. TOC
{:toc}

----

Triggers are the heart of automatic scripts. Using trighgers, a series of commands can run automatically after some event happens in-game.

Kittykeys supports the following triggers as documented below. If you have any questions, please join the [JumpIfZero Plugins Discord server](https://discord.gg/j6754fvqyn), and we'll be happy to help! :cat:

----

## ANIMATION_SELF
_When the specified animation starts on your own player, this trigger is hit._
### Syntax
{: .no_toc }

```js 
ANIMATION_SELF Animation_ID
```

- **`Animation_ID`** : The integer ID of an animation.
### Examples
{: .no_toc }

```js
// Trigger when the player digs with a spade
ANIMATION_SELF 830
```
### Notes
{: .no_toc }

- You can find an animation ID by using Kittykeys -> Settings -> Print events to chat, or by using Dev tools -> Player or NPCs (if using dev tools, _A_ holds the current animation ID).
### Demo:
{: .no_toc }

![](https://1.imgur.com/fiC1nS2.gif)

## ANIMATION_TARGET
_When the specified animation starts on the current TARGET player or NPC, this trigger is hit._
### Syntax
{: .no_toc }

```js 
ANIMATION_TARGET Animation_ID
```

- **`Animation_ID`** : The integer ID of an animation.
### Examples
{: .no_toc }

```js
// TODO: Examples
```
### Notes
{: .no_toc }

- If the player does not have a target, this command will do nothing. See **[the TARGET_SET command](./commands.md#target_set)** for more information.
- You can find an animation ID by using Kittykeys -> Settings -> Print events to chat, or by using Dev tools -> Player or NPCs (if using dev tools, _A_ holds the current animation ID).
### Demo:
{: .no_toc }

TODO: Demo

## ANIMATION_ANY
_When any nearby player or NPC performs the specified animation, this trigger is hit._

### Syntax
```js
ANIMATION_ANY Animation_ID
```
- **`Animation_ID`** : The integer ID of an animation.

### Examples

```js
// Pray magic against Jad in the inferno Jad challenge
ANIMATION_ANY 7592
// Commands 
Sleep 600 700
PROTECT_FROM_MAGIC 1
```

### Notes
- Useful for auto prayers.

### Demo
![](https://1.imgur.com/5h9rGHn.gif)

## TICK
TICK - This trigger happens approximately every 600ms (game tick).

## PROJECTILE
_When projectile with the wanted ID spawns, this trigger is hit._

### Syntax
```js
PROJECTILE projectileID
```
-  projectileID

### 

## Notes
You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > projectiles and getting the projectile ID from it.

## SOUND_EFFECT
_This triggers when sound effect starts. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > sound effects and getting the effect ID from it._

### Syntax
```js
SOUND_EFFECT soundID
```
-  soundID

### 

## Notes
IMPORTANT! You will need to have your middle sounds (sound effects) turned on, at least 1% to use this.

## GRAPHIC_SELF
_this is hit when you cast bloom with silver sickle. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > player or NPCs and getting the graphic ID from it._

### Syntax
```js
GRAPHIC_SELF graphicID - When graphic starts on your own player, this trigger is hit. Example usage `GRAPHIC_SELF 264`
```
-  graphicID - When graphic starts on your own player, this trigger is hit. Example usage `GRAPHIC_SELF 264`

### 

## Notes
In dev tools G is for Graphic.

### Demo
![](https://1.imgur.com/rgxOSkK.gif)

## GRAPHIC_TARGET
GRAPHIC_TARGET graphicID - Same command as above, but this triggers when your current target performs the animation

## HITSPLAT
_When hitsplat is applies on your target, this trigger is hit. Optional parameter value may be used if you want this to only trigger if hit **higher than** value should be used._

### Syntax
```js
HITSPLAT [value]
```
-  [value]

### Example `HITSPLAT` or `HITSPLAT 5`.

## Notes


### Demo
![](https://1.imgur.com/7zBXxOt.gif)

## NPC_SPAWN
_When NPC with this name or ID spawns, this trigger is hit. Supports wildcards for name._

### Syntax
```js
NPC_SPAWN NpcName/NpcID
```
-  NpcName/NpcID

### Example `NPC_SPAWN 6611`

## Notes


## NPC_DESPAWN
_When NPC with this name or ID spawns, this trigger is hit. Supports wildcards for name._

### Syntax
```js
NPC_DESPAWN NpcName/NpcID
```
-  NpcName/NpcID

### Example `NPC_DESPAWN vet*`

## Notes


### Demo
![](https://1.imgur.com/K17U2BS.gif)

## PLAYER_SPAWN
_When player with this name spawns, this trigger is hit. Supports wildcards for the name._

### Syntax
```js
PLAYER_SPAWN PlayerName
```
-  PlayerName

### Example `PLAYER_SPAWN *`

## Notes


### Demo
![](https://1.imgur.com/r9HCGZe.gif)

## PLAYER_DESPAWN
_When player with this name despawns, this trigger is hit._

### Syntax
```js
PLAYER_SPAWN PlayerName
```
-  PlayerName

### 

## Notes
Supports wildcards for the name.

## STAT
_When stat changes below target level, this trigger is hit._

### Syntax
```js
STAT SkillName Level
```
-  SkillName Level

### Example `STAT HITPOINTS 50`.

## Notes


### Demo
![](https://1.imgur.com/ghs5wpn.gif)

## XP_DROP
_When xp drop higher than value is received, with or without specific skill is received, this trigger is hit._

### Syntax
```js
XP_DROP [SkillName] value
```
-  [SkillName] value

### Example ``XP_DROP MAGIC 65`.

## Notes


### Demo
![](https://1.imgur.com/n4rJZFN.gif)

## GRAPHIC_SPAWN
_When graphic spawns on floor, this trigger is hit. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > graphics objects and getting the graphic ID from it._

### Syntax
```js
GRAPHIC_SPAWN graphicID
```
-  graphicID

### 

## Notes


## ITEM_SPAWN
_When item spawns on ground, this trigger is hit. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > ground items and getting the itemID from it._

### Syntax
```js
ITEM_SPAWN ItemID
```
-  ItemID

### 

## Notes
It is also possible to use tools such as `https://chinplugins.xyz/items`

## OVERHEAD
_When target overhead changes, this trigger is hit. Useful when making demonic gorilla swapper for example. Example `OVERHEAD MELEE`._

### Syntax
```js
OVERHEAD Overheadname
```
-  Overheadname

### 

### Notes


List of possible overheads:
```
MELEE, RANGED, MAGIC, RETRIBUTION, SMITE, REDEMPTION, RANGE_MAGE, RANGE_MELEE, MAGE_MELEE, RANGE_MAGE_MELEE, WRATH, SOUL_SPLIT, DEFLECT_MELEE, DEFLECT_RANGE, DEFLECT_MAGE
```

## IDLE
_When player returns to idle, this trigger is hit._

### Syntax
```js
IDLE
```
- This trigger takes no arguments.

## INTERACTION_END
_When player interaction ends (returns to null), this trigger is hit._

### Syntax
```js
INTERACTION_END
```

- This trigger takes no arguments.

## INVENTORY_FULL
_When player inventory becomes full, this trigger is hit._

### Syntax

```js
INVENTORY_FULL
```

- This trigger takes no arguments.

## INVENTORY_EMPTY
_When player inventory becomes empty, this trigger is hit._

### Syntax
```js
INVENTORY_EMPTY
```
- This trigger takes no arguments.

## Notes
Useful for various skilling and bankstanding.
  
## WIDGET_SPAWN  
WIDGET_SPAWN widgetID - When widget spawns, this trigger is hit. Useful for various skilling and bankstanding. Example `WIDGET_SPAWN 12` triggers when bank opens.

### Demo
![](https://1.imgur.com/ILx7jl6.gif)

## DEATH
DEATH - When you die, this trigger is hit.

## GAME_OBJECT_SPAWN
_When game object spawns, this trigger is hit._

### Syntax
```js
GAME_OBJECT_SPAWN ObjectID
```
-  ObjectID

### Example `GAME_OBJECT_SPAWN 9036`

## Notes


***

## See something missing that you think would be useful as trigger?<br>Suggest it with explanation and I'll consider adding it