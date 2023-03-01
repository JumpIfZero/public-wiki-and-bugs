---
title: PRAYER
description: Activates, deactivates, or toggles a prayer by name.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax


```java
PRAYER_NAME [0|1]
```
- **`PRAYER_NAME`** : The string name of a prayer. When specifying a prayer by name, use UPPERCASE with underscores instead of spaces, and do not use quotes.
- **`0`** _(Optional)_ : Force the named prayer OFF, regardless of its current state.
- **`1`** _(Optional)_ : Force the named prayer ON, regardless of its current state.
- If no second parameter is specified, this command will toggle the named prayer to the opposite state.

## Examples
 

```java
// Always disable Protect from Melee
PROTECT_FROM_MELEE 0
// Always enable Protect from Melee
PROTECT_FROM_MELEE 1
// Toggle (reverse) the current state of Protect from Melee
PROTECT_FROM_MELEE
```

## Demos

 
![](https://i.imgur.com/tBxI1AB.gif)
