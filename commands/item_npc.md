---
title: ITEM_NPC
description: Uses the first occurrence of an inventory item on your NPC target.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
ITEM_NPC Item_Name|Item_ID
```

- **`Item_Name`** : The string name of an item. When specifying items by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`Item_ID`** : The integer ID of an item. 

## Examples

```java
// Use noted bowstrings (1778) on the current target NPC
ITEM_NPC 1778
```

## Notes

- If the player does not have a target, this command will do nothing. See **[`TARGET_SET`](/commands/target_set.md)** for more information.
- Generally, you should prefer items' integer IDs, as they are more precise. However, in certain situations, using the item's name with a wildcard is required.

## Demos

![](https://i.imgur.com/hbRJSum.gif)
