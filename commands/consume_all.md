---
title: CONSUME_ALL

description: Clicks once on each occurrence of the specified inventory item(s).
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
CONSUME_ALL Item_Name_1|Item_ID_1[,Item_Name_2|Item_ID_2,...] [Identifier]
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Item_ID`** : The integer ID of an item.
- **Multiple Items** _(Optional)_ : To specify multiple items, separate each with a comma and no space. 
- **`Identifier`** _(Optional)_ : The integer value _Identifier_ can be used with a single item if the desired action is not the default action for that item (i.e., if it is not the left-click action). 

TODO: How to locate the Identifier

## Examples
 
```java
// Drop all logs in the inventory. 7 is the Identifier for "drop".
CONSUME_ALL *logs* 7
```
## Notes

- If you specify multiple items, they will all be consumed within one game tick.
- OSRS limits players to 10 actions per each tick.
- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

## Demos
 
![](https://i.imgur.com/ISznuS5.gif)
