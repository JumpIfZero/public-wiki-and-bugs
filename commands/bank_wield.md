---
title: BANK_WIELD

description: Wields items from your bank.
parent: Commands
---

# {{ page.title }}

*{{ page.description }}*

## Syntax

```java
BANK_WIELD Item_Name_1|Item_ID_1[,Item_Name_2|Item_ID_2,...]
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Item_ID`** : The integer ID of an item.

## Examples

```java
BANK_WIELD 4089,4113,4105,4097
```

## Notes

- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

## Demos

![](https://i.imgur.com/dWYJiP8.gif)
