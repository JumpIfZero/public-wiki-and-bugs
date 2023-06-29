---
title: ITEM_USE_ALL
description: Combines inventory item one on every match of item two
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
ITEM_USE_ALL item1 item2 

item1 - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
item2 - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
```

## Examples

```java
ITEM_USE_ALL chisel *essence*
ITEM_USE_ALL 946 13339
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools

## Demos

![](N/A)

