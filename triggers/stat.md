---
title: STAT
description: When the specified stat of the player moves below the specified level, this trigger is hit.
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax
```java
STAT Skill_Name Max_Level Min_Level
```

- **`Skill_Name`** : The string name of a skill, such as Attack or Herblore.
- **`Max_Level`** : Trigger when the skill drops below this level.
- **`Min_Level`** _(Optional)_ : If specified, only trigger when the skill is between `Max_Level` and `Min_level`. 


## Examples 
```js
// Trigger if the player's HP drops below 50
STAT HITPOINTS 50
```

## Notes

- The order of Minimum and Maximum are reversed.

## Demo

![](https://1.imgur.com/ghs5wpn.gif)
