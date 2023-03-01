---
title: CUSTOM
description: Performs any action, even actions that are not natively supported by an exsisting command.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
CUSTOM Lots of Required integers
```

## Examples

> I want to toggle run, but there's no `RUN` command!

0. Switch to the **Game chat** tab in OSRS
1. Go to Kittykeys &rarr; Settings &rarr; Debug
2. Enable **Print clicks to chat**
3. Perform the desired action, and see which numbers Kittykeys prints to Game chat
3. _(Optional)_ Disable **Print clicks to chat** to keep the chatbox clean 
4. Enter every number as a parameter to the custom command

## Demos

 
![](https://i.imgur.com/YbIhHM9.gif)


## Notes
- Every number printed for a given click is required. Separate each number with one space.

{: .warning } 
> CUSTOM will not work for actions where the identifiers or parameters will change, including any click on game objects, or if an inventory item moves to a different slot.
> 
> For actions that have have their own command (e.g., OBJECT or CONSUME), use the dedicated command instead.
