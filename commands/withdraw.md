---
title: WITHDRAW
description: Withdraws the specified item(s) from your bank.

parent: Commands
---

# {{ page.title }}

*{{ page.description }}*

## Syntax

```java
WITHDRAW Item_Name_1|Item_ID_1,[Item_Name_2|Ityem_ID_2,...] AMOUNT
```

## Examples

```java
// Withdraw 7 water runes
WITHDRAW water_rune 7

// Withdraw 7 water runes and 7 air runes
WITHDRAW water_rune,air_rune 7
```

## Notes

*   If multiple items are specifed, all will be withdrawn in the same quantity. Use multiple WITHDRAW commands to change the quantity of items.

```java
// BAD: This example would withdraw 6 logs and 6 tinderboxes
WITHDRAW Oak_logs,Tinderbox 6

// GOOD: To change quantities, use another WITHDRAW command
WITHDRAW Tinderbox 1
WITHDRAW Oak_logs 6 
```

## Demos

![](https://i.imgur.com/MJftNNl.gif)
