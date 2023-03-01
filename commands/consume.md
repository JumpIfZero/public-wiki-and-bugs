---
title: CONSUME

description: Clicks on the first occurrence of the inventory item(s).
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
CONSUME Item_Name_1|Item_ID_1[,Item_Name_2|Item_ID_2,...] [Identifier]
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards.
- **`Item_ID`** : The integer ID of an item.
- **Multiple Items** _(Optional)_ : To specify multiple items, separate each with a comma and no space. 
- **`Identifier`** _(Optional)_ : The integer value _Identifier_ can be used with a single item if the desired action is not the default action for that item (i.e., if it is not the left-click action). 

TODO: How to locate Identifier

## Examples

```java
// Consume (click) the first occurrence of anything with "cake" somewhere in the name
CONSUME *cake*
// Guzzle the Dwarven rock cake. "Guzzle" has an Identifier of 4
CONSUME Dwarven_Rock_cake 4 
// This is equivalent, it also guzzles the Dwarven rock cake
CONSUME *Rock_cake 4
```

## Notes

- If you specify multiple items, they will all be consumed within one game tick.
- OSRS limits players to 10 actions per each tick.
- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, a wildcard is required. When consuming potions or multiple food items, use the names:

```java
// GOOD: Consume the first available Sara brew (any dose)
CONSUME Saradomin_brew*
// GOOD: Triple eat in a single game tick
CONSUME Shark,Saradomin_brew*,*karambwan*
// BAD: Using the ID for Saradomin Brew(4) would ignore any 3-, 2-, or 1-dose brews. 
CONSUME 6685
```

## Demos

![](https://i.imgur.com/1XR1b7s.gif)
