---
title: About Kittykeys
nav_order: 2
description: "About the Kittykeys plugin."
permalink: /about
---

# What is Kittykeys?

Kittykeys is a programmable, fully customizable plugin that implements event-driven architecture. A producer creates an event that is caused by change or update, that triggers routing which finally leads to consumer to take action. This means that you can run set of commands when you press a hotkey or automate it to happen when something happens in-game.

KittyKeys simply put is a tool where YOU can make almost anything possible YOURSELF. KittyKeys by default does not contain any scripts, however there are premade scripts for variety of types in 🔥-kittykeys-scripts channel in my discord.

# Features

- Configurable click locations (random/constant)
- Configurable delays (random/instant)
- Option to turn mouse clicks off
- Option to allow multiple scripts to run at same time
- Option to queue any pending scripts that may try to run while another is already running
- Option to force stop all running scripts
- Option to block hotkeys from chat
- Option to disable timeouts when using trigger (event) inside command
- Tab autocompletion for command and trigger names.

Miscellaneous features:
- Permanent special attack bar

![Kittykeys settings](https://i.imgur.com/JDt1pTs.png)

![Kittykeys editor](https://i.imgur.com/zRNzIa9.gif)

# How Kittykeys Works

The general event flow is: Producer → routing → consumer

## Examples

Enable protect from melee by pressing key <kbd>A</kbd>:  
```
Key press 
  → key matches a bound hotkey 
    → run script (enable protect from melee)
```

Drop logs when inventory gets full:  
```
Inventory full 
  → matching script with this trigger was found 
    → run script (drop all logs from inventory)  
````