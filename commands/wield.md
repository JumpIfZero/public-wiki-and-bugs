---
title: WIELD
description: Wields items from your inventory.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax


```java
WIELD Item_Name_1|Item_ID_1[,Item_Name_2|Item_ID_2,...]
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards.
- **`Item_ID`** : The integer ID of an item.

## Examples 


```java
// Put on any mystic robe pieces in the inventory
WIELD *mystic*
```

## Notes
 

- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

## Demos

 
![](https://i.imgur.com/PMg4np5.gif)