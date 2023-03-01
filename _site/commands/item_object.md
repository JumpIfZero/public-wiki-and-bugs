***

title: ITEM\_OBJECT
description: Uses an inventory item on the first nearby occurrence of a game object.

## parent: Commands

# {{ page.title }}

*{{ page.description }}*

## Syntax

```java
ITEM_OBJECT Item_Name|Item_ID Object_ID
```

*   **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
*   **`Item_ID`** : The integer ID of an item.
*   **`Game_Object_ID`** : The integer ID of a game object. Strings are not accepted.

## Examples

```java
// Use Cannonball (item 1778) on a deployed Dwarf multicannon (object 26711) to refill it
ITEM_OBJECT 1778 26711
```

## Notes

*   Because `Game_Object_ID` requires an integer ID, it is recommended to use the item's integer ID for this command as well.

```java
// GOOD: Both parameters are integer IDs (recommended)
ITEM_OBJECT 1778 26711
// GOOD: Item_name string and Game_Object_ID integer (NOT recommended)
ITEM_OBJECT Cannonball 26711
// BAD: Game_Object_ID must be an integer. This does NOT work
ITEM_OBJECT Cannonball Dwarf_multicannon
// BAD: Game_Object_ID must be an integer. This also does NOT work
ITEM_OBJECT 1778 Dwarf_multicannon
```

## Demos

![](https://i.imgur.com/HOo155S.gif)
