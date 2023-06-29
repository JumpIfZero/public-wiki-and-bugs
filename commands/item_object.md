---
title: ITEM_OBJECT
description: Uses item on first found object
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
ITEM_OBJECT item object 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
object - ObjectName1/ObjectID1,ObjectName2/ObjectID2, ..., ObjectNameN/ObjectIDN
```

## Examples

```java
ITEM_OBJECT *bones* chaos_altar
ITEM_OBJECT steel_bar bank_booth
ITEM_OBJECT 22124 61
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools
- To find objectIDs, you can use kittykeys debug tab or dev tools

## Demos

![](https://i.imgur.com/P0qtuqB.gif)

