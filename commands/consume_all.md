---
title: CONSUME_ALL
description: Iterates foreach on all items found
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
CONSUME_ALL    item [id] 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
id - Identifier / menu item to click

```

## Examples

```java
CONSUME_ALL grimy_irit_leaf
CONSUME_ALL leaping_trout 7
CONSUME_ALL *logs* 7
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools
- To find identifier, you can use kittykeys click logger - do not shift click items

## Demos

![](https://i.imgur.com/ISznuS5.gif)

