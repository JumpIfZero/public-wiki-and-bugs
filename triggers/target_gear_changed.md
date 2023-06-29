---
title: TARGET_GEAR_CHANGED
description: Triggers when your player target gear changes
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
TARGET_GEAR_CHANGED item 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
```

## Examples

```java
TARGET_GEAR_CHANGED 20425,20426
TARGET_GEAR_CHANGED *wand*,*staff*
```

## Notes

- To find itemIDs, you can use kittykeys debug tab or dev tools
- To use this trigger, you must have active target selected

## Demos

![](https://i.imgur.com/946biD2.mp4)

