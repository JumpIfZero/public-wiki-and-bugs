---
title: CUSTOM
description: Sends custom menuaction
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
CUSTOM menuActionID identifier itemID param0 param1 [worldview] 

menuActionID - Menuaction ID
identifier - Identifier
itemID - ItemID, -1 if not item action
param0 - First parameter
param1 - Second parameter
worldview - World view, currently always -1
```

## Examples

```java
CUSTOM 57 1 -1 -1 10485787
CUSTOM 57 1 -1 -1 10485787 -1
```

## Notes

{: .warning }
Validity of the menuaction data IS NOT verified. Using this command is advanced method
- To find custom action IDs, you can use kittykeys click logger

## Demos

![](https://i.imgur.com/YbIhHM9.gif)

