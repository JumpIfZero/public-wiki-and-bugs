---
title: XP_DROP
description: When the player receives an XP drop of at least the specified amount, this trigger is hit.
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
XP_DROP Skill_Name Amount
```
- **`Skill_Name`** _(Optional)_ : If specified, the name of the skill to watch for XP drops.
- **`Amount`** : Integer minimum amount of XP in one drop that should activate the trigger.

## Examples 
```java
// This triggers when the player earns 65 magic XP or higher in one action
XP_DROP Magic 65
// This triggers when the player earns 50+ Runecraft XP in one action, but not 0-49
XP_DROP Runecraft 50
// This triggers when the player earns 100+ XP in one action, regardless of the skill
XP_DROP 100


```

## Notes

- The skill name is _Runecraft_, not _Runecrafting_. 

## Demo

![](https://1.imgur.com/n4rJZFN.gif)
