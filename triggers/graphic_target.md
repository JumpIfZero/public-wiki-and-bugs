---
title: GRAPHIC_TARGET
description: Triggers when the specified graphic is rendered on the current target.
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
GRAPHIC_TARGET Graphic_ID_1[,Graphic_ID_2]
```
-  Graphic_ID 

## Examples 
```java
// Graphic 264 is used when the player casts bloom with a silver sickle (b)
GRAPHIC_TARGET 264
```

## Notes

- You can find an ID by using Kittykeys -> Settings -> Print events to chat, or by using Dev tools -> NPC or Player (if using dev tools, _G_ holds the current graphic ID).

## Demos

![](https://1.imgur.com/rgxOSkK.gif)