---
title: Triggers
description: ""
permalink: /triggers
---

# Triggers in Kittykeys

Triggers are the heart of automatic scripts. Using trighgers, a series of commands can run automatically after some event happens in-game.

Kittykeys supports the following triggers as documented below. If you have any questions, please join the [JumpIfZero Plugins Discord server](https://discord.gg/j6754fvqyn), and we'll be happy to help! :cat:

----

## ANIMATION_SELF
ANIMATION_SELF animationID - When animation starts on your own player, this trigger is hit. 

Example usage `ANIMATION_SELF 830` - this is hit when you dig with spade . You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > player or NPCs and getting the animation ID from it. In dev tools A is for Animation.

### Demo
![](https://1.imgure.com/fiC1nS2.gif)

## ANIMATION_TARGET
ANIMATION_TARGET animationID - Same command as above, but this triggers when your current target performs the animation

## ANIMATION_ANY
ANIMATION_ANY animationID - Same as above, but this triggers when anyone performs the animations. Useful for auto prayers.

### Demo
![](https://1.imgure.com/5h9rGHn.gif)

## TICK
TICK - This trigger happens approximately every 600ms (game tick).

## PROJECTILE
PROJECTILE projectileID - When projectile with the wanted ID spawns, this trigger is hit. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > projectiles and getting the projectile ID from it.

## SOUND_EFFECT
SOUND_EFFECT soundID - This triggers when sound effect starts. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > sound effects and getting the effect ID from it. IMPORTANT! You will need to have your middle sounds (sound effects) turned on, at least 1% to use this.

## GRAPHIC_SELF
GRAPHIC_SELF graphicID - When graphic starts on your own player, this trigger is hit. Example usage `GRAPHIC_SELF 264` - this is hit when you cast bloom with silver sickle. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > player or NPCs and getting the graphic ID from it. In dev tools G is for Graphic.

### Demo
![](https://1.imgure.com/rgxOSkK.gif)

## GRAPHIC_TARGET
GRAPHIC_TARGET graphicID - Same command as above, but this triggers when your current target performs the animation

## HITSPLAT
HITSPLAT [value] - When hitsplat is applies on your target, this trigger is hit. Optional parameter value may be used if you want this to only trigger if hit **higher than** value should be used. Example `HITSPLAT` or `HITSPLAT 5`.

### Demo
![](https://1.imgure.com/7zBXxOt.gif)

## NPC_SPAWN
NPC_SPAWN NpcName/NpcID - When NPC with this name or ID spawns, this trigger is hit. Supports wildcards for name. Example `NPC_SPAWN 6611`

## NPC_DESPAWN
NPC_DESPAWN NpcName/NpcID - When NPC with this name or ID spawns, this trigger is hit. Supports wildcards for name. Example `NPC_DESPAWN vet*`

### Demo
![](https://1.imgure.com/K17U2BS.gif)

## PLAYER_SPAWN
PLAYER_SPAWN PlayerName - When player with this name spawns, this trigger is hit. Supports wildcards for the name. Example `PLAYER_SPAWN *`

### Demo
![](https://1.imgure.com/r9HCGZe.gif)

## PLAYER_DESPAWN
PLAYER_SPAWN PlayerName - When player with this name despawns, this trigger is hit. Supports wildcards for the name.

## STAT
STAT SkillName Level - When stat changes below target level, this trigger is hit. Example `STAT HITPOINTS 50`.

### Demo
![](https://1.imgure.com/ghs5wpn.gif)

## XP_DROP
XP_DROP [SkillName] value - When xp drop higher than value is received, with or without specific skill is received, this trigger is hit. Example ``XP_DROP MAGIC 65`.

### Demo
![](https://1.imgure.com/n4rJZFN.gif)

## GRAPHIC_SPAWN
GRAPHIC_SPAWN graphicID - When graphic spawns on floor, this trigger is hit. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > graphics objects and getting the graphic ID from it. 

## ITEM_SPAWN
ITEM_SPAWN ItemID - When item spawns on ground, this trigger is hit. You can get this ID by using kittykeys > settings > print events to chat, or using dev tools > ground items and getting the itemID from it. It is also possible to use tools such as `https://chinplugins.xyz/items`

## OVERHEAD
* OVERHEAD Overheadname - When target overhead changes, this trigger is hit. Useful when making demonic gorilla swapper for example. Example `OVERHEAD MELEE`. List of possible overheads:

```
MELEE, RANGED, MAGIC, RETRIBUTION, SMITE, REDEMPTION, RANGE_MAGE, RANGE_MELEE, MAGE_MELEE, RANGE_MAGE_MELEE, WRATH, SOUL_SPLIT, DEFLECT_MELEE, DEFLECT_RANGE, DEFLECT_MAGE
```

## IDLE
IDLE - When player returns to idle, this trigger is hit. Useful for various skilling and bankstanding.

## INTERACTION_END
INTERACTION_END - When player interaction ends (returns to null), this trigger is hit. Useful for various skilling and bankstanding.

## INVENTORY_FULL
INVENTORY_FULL - When player inventory becomes full, this trigger is hit. Useful for various skilling and bankstanding.

## INVENTORY_EMPTY
INVENTORY_EMPTY - When player inventory becomes empty, this trigger is hit. Useful for various skilling and bankstanding.

## WIDGET_SPAWN 
WIDGET_SPAWN WidgetID - When widget spawns, this trigger is hit. Useful for various skilling and bankstanding. Example `WIDGET_SPAWN 12` - triggers when bank opens.

### Demo
![](https://1.imgure.com/ILx7jl6.gif)

## DEATH
DEATH - When you die, this trigger is hit.

## GAME_OBJECT_SPAWN
GAME_OBJECT_SPAWN ObjectID - When game object spawns, this trigger is hit. Example `GAME_OBJECT_SPAWN 9036`

***

## See something missing that you think would be useful as trigger?<br>Suggest it with explanation and I'll consider adding it