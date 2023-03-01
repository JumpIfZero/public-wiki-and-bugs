---
title: QUICK_PRAYER
description: Activates, deactivates, or toggles the player's previously defined quick prayers.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax


```java
QUICK_PRAYER [0|1]
```

- **`0`** _(Optional)_ : Force the player's quick prayers OFF, regardless of the current state.
- **`1`** _(Optional)_ : Force the player's quick prayers ON, regardless of the current state.
- If no parameter is specified, this command will toggle the player's quick prayers to the opposite state.

## Examples 


```java
// Always disable quick prayers
QUICK_PRAYER 0
// Always enable quick prayers
QUICK_PRAYER 1
// Toggle (reverse) the current state of quick prayers
QUICK_PRAYER
```

## Notes


- Requires quick prayers to be previously set. If there are no quick prayers configured, this command will do nothing.

## Demos

 
![](https://i.imgur.com/oOFjtej.gif)
