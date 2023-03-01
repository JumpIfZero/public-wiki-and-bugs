---
title: ITEM_USE
description: Combines the first occurrence of inventory item 1 with the first occurrence of inventory item.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
ITEM_USE Item_Name_1|Item_ID_1 Item_Name_2|Item_ID_2
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Item_ID`** : The integer ID of an item.

## Examples

```java
// Attach a stack of feathers to a stack of dart tips (any type)
ITEM_USE Feather *Dart_tip*
// This example specifically uses a feather on Adamant dart tips.
// Remember: All integer IDs are unique!
ITEM_USE Feather 823
```

## Notes:

- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

## Demo:

![](https://i.imgur.com/7stedcZ.gif)