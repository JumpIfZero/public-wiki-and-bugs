---
title: CONSUME
description: Clicks on first found item
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
CONSUME item [id] 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
id - Identifier / menu item to click
```

## Examples

```java
CONSUME shark,*brew*,*karam*
CONSUME 385
CONSUME 229 7
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools
- To find identifier, you can use kittykeys click logger - do not shift click items

## Demos

![](https://i.imgur.com/1XR1b7s.gif)

