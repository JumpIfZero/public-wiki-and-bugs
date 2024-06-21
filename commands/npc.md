---
title: NPC
description: Clicks on nearest NPC found that is not already dead
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
NPC npc [menuaction] 

npc - NpcID1/NpcName1,NpcID2/NpcName2, ..., NpcIDN/NpcNameN
menuaction - MenuActionID - leaving menuaction out will default to NPC_SECOND_OPTION (10)
```

## Examples

```java
NPC goblin
NPC fishing_spot
NPC perdu 11
NPC 7730 9
NPC goblin attack
NPC man pickpocket
```

## Notes

- Wildcards are supported with this command
- To find npcIDs, you can use kittykeys debug tab or dev tools
- To find menuaction, you can use kittykeys click logger

## Demos

![](https://i.imgur.com/nJNYsdI.gif)

