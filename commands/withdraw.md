---
title: WITHDRAW
description: Withdraws items from your bank as und version
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
WITHDRAW item [quantity] 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
quantity - Leaving quantity out will withdraw all
```

## Examples

```java
WITHDRAW shark 5
WITHDRAW chisel,hammer 2
WITHDRAW coins
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools

## Demos

![](https://i.imgur.com/MJftNNl.gif)

