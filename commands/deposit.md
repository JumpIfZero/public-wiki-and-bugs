---
title: DEPOSIT
description: Deposit items from your bank inventory
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
DEPOSIT item [quantity] 

item - ItemName1/ItemID1,ItemName2/ItemID2, ..., ItemNameN/ItemIDN
quantity - Leaving quantity out will deposit all
```

## Examples

```java
DEPOSIT shark 5
DEPOSIT coins
```

## Notes

- Wildcards are supported with this command
- To find itemIDs, you can use kittykeys debug tab or dev tools

## Demos

![](https://i.imgur.com/GqyX4ZU.gif)

