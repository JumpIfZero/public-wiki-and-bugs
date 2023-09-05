---
title: ITEM_NPC
description: Uses item on nearest NPC match
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
ITEM_NPC item npc 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
npc - NpcID1/NpcName1,NpcID2/NpcName2, ..., NpcIDN/NpcNameN
```

## Examples

```java
ITEM_NPC iron_bar banker
ITEM_NPC 536 1614
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools
- To find npcIDs, you can use kittykeys debug tab or dev tools

## Demos

![](https://i.imgur.com/hbRJSum.gif)

