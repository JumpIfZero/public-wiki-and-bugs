---
title: HITSPLAT
description: Triggers when a hitsplat lands on the player's current target.
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
HITSPLAT [Min_Value]
```
-  **`Min_Value`** _(Optional)_ :  Only trigger when a hitsplat higher than the specified value lands on the target. If no value is specified, all hits (not 0) will activate the trigger.

## Examples

```js 
// Activate if any hitsplat lands on the target, except 0
HITSPLAT
// Activate only if a hitsplat of 5 or greater lands on the target
HITSPLAT 5
```

## Notes

<!-- TODO: Pending suggestion 66, it could matter Soon(tm)... -->
- The type of hitsplat (poison, venom, normal damage) does not matter.

## Demos

![](https://1.imgur.com/7zBXxOt.gif)