----
title: "About KittyKeys"
layout: default
----

Kittykeys is programmable, fully customizable plugin that implements event-driven architecture. A producer creates an event that is caused by change or update, that triggers routing which finally leads to consumer to take action. This means that you can run set of commands when you press a hotkey or automate it to happen when something happens in-game.

Wiki for this plugin is not complete, the plugin help tabs and discord will always have up-to-date information.

Producer
-> routing
-> consumer

Examples:

Enable protect from melee by pressing key "A":<br>
`Key press`<br>
`-> key matches to binded hotkey`<br>
`-> Enable protect from melee`<br>

Drop logs when inventory gets full:<br>
`Inventory full`<br>
`-> matching script with this trigger was found`<br>
`-> drop all logs from inventory`<br>

Features:
- Configurable click locations (random/constant)
- Configurable delays (random / instant)
- Option to turn mouse clicks off
- Option to allow multiple scripts to run at same time
- Option to queue any pending scripts that may try to run while another is already running
- Option to force stop all running scripts
- Option to block hotkeys from chat
- Option to disable timeouts when using trigger (event) inside command
- Automatic text prediction when editing commands

Miscellaneous features:
- Permanent special attack bar

![Kittykeys settings](https://i.imgur.com/JDt1pTs.png)
<br>Kittykeys editor - https://imgur.com/zRNzIa9