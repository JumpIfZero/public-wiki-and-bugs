---
title: MESSAGE
description: Triggers when you receive message matching message by type and content
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
MESSAGE type message 

type - Message type ID, usually 0 (GAMEMESSAGE) - @see <a href="https://github.com/runelite/runelite/blob/master/runelite-api/src/main/java/net/runelite/api/ChatMessageType.java">ChatMessageType</a>
message - Message to match for this trigger
```

## Examples

```java
MESSAGE 0 nothing_interesting_happens.
```

## Notes


## Demos

![](https://i.imgur.com/XSSu5gC.gif)

