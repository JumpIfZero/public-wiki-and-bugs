---
title: EMOTE
description: Performs the emote with the specified name.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
EMOTE Emote_Name
```

- **`Emote_Name`** : The name of an emote to perform. When specifying an emote, use underscores instead of spaces, and do not use quotes.

## Examples

```java
// Dance like no one's watching
EMOTE Dance
// Show off your skillcape (does nothing if a skillcape is not equipped)
EMOTE Skill_Cape
```

## Notes

- Only specify one emote per command.
```java
// BAD: One command won't perform multiple emotes
EMOTE Dance,Bow
// GOOD: Use separate commands to perform a sequence of emotes
EMOTE Dance
EMOTE Bow
```

## Demos

![](https://i.imgur.com/3E6hRi4.gif)
