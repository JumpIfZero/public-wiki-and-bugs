---
title: OBJECT
description: Clicks on nearest object found
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
OBJECT object [menuaction] 

object - ObjectName1/ObjectID1,ObjectName2/ObjectID2, ..., ObjectNameN/ObjectIDN
menuaction - MenuActionID - leaving menuaction out will default to GAME_OBJECT_FIRST_OPTION (3)
```

## Examples

```java
OBJECT bank_chest
OBJECT *tree
OBJECT 1235,5674
OBJECT bank_booth 4
OBJECT tree chop
OBJECT bank_booth collect
```

## Notes

- Wildcards are supported with this command
- To find objectIDs, you can use kittykeys debug tab or dev tools
- To find menuaction, you can use kittykeys click logger
- Objects include game objects, wall objects, ground objects and decorative objects

## Demos

![](https://i.imgur.com/aofxH3q.gif)

