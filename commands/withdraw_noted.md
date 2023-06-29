---
title: WITHDRAW_NOTED
description: Withdraws items from your bank as d version
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
WITHDRAW_NOTED item [quantity] 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
quantity - Leaving quantity out will withdraw all as note
```

## Examples

```java
WITHDRAW_NOTED shark 5
WITHDRAW_NOTED 1779
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools

## Demos

![](https://i.imgur.com/c2KispC.gif)

