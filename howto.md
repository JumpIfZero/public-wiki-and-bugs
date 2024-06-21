---
title: Getting started
nav_order: 3
description: "Beginner guide to Kittykeys"
permalink: /howto
---

# Welcome to KittyKeys

KittyKeys comes with a list of Commands and Triggers you can find in this documentation site
* [Commands](https://docs.jzplugins.com/commands)
* [Triggers](https://docs.jzplugins.com/triggers)

Every page has explanation of the instruction, short description, syntax, examples and usually - important note about the instruction. It is highly advised to read and study these documents before asking more questions.

Inside your KittyKeys plugin, you can find SDN (Script Delivery Network), where other customers share their scripts. The SDN main view also has a search bar so you can find your favourite scripts by using keywords.

These can be imported into your client by right clicking and hitting install. Usually the scripts also have instructions how to use the script. Follow the instructions given by the original uploader to make sure the script works as intended.

Once you're more skilled with KittyKeys, you can also right click upload your script groups to SDN to make it available for others.

* How to get started
* What are different script types
* What is possible and what is not possible with Kittykeys
* How to use the DevTools and how does the debug tab work
* How to build a script and how to use the given tools

## How to get started

The clip below showcases the editor, which can be found by navigating to the KittyKeys plugin on the side of your client. The also showcases a simple script, which in this case is an auto script. When a xp drop in magic of at least 20 happens it will equip armadyl godsword. You can popup the editor by hitting add new script button or right clicking existing script and selecting edit. 

![Script editor](https://i.imgur.com/zRNzIa9.gif)

Hotkey scripts need a __keybind__ to function so do not forget to chose the keybind for example number 2. Clicking on the "Help" option it will open a documentation of every command and trigger, which is identical to this site. If you have any questions feel free to ask other users in customer chat channels.

## What are different script types

As the names suggest a hotkey script works by binding a script to a hotkey.

Simple hotkey script would be for example:
![Hotkey script](https://i.imgur.com/ecaz6aY.png)

* When pressing "2" (keybind)
* Equip Armadyl godsword
* Click special attack bar
* Click on the enemy

Auto scripts work by listening to game event, called trigger. When the trigger happens, script will start running.

Simple auto script would be for example:
![Auto script](https://i.imgur.com/1OxKz25.png)

Simulate a 20+ hit of lets say fire surge
Trigger: XP_DROP MAGIC 100

When the Trigger is met (100xp drop in magic)
* Equip Armadyl Godsword
* Click special attack bar
* Click on enemy
* Turn off the script after the script is over

Oneclicks are auto scripts, but they require manual clicks anywhere on your screen to do anything.
Every line of commands is triggered by clicking on screen so if above auto script is turned into 1C in this case it would be:
* First click would be wield armadyl godsword
* Second click would be click special attack bar
* Third click would be click on the target

## What is possible and what is not possible with Kittykeys

Almost anything is possible using KittyKeys. YOU can choose how you want to use KittyKeys. KittyKeys can be used in a variety of things, including PVP, PVM, skilling, bossing, minigames or even utility tools such as auto typing. It can be simple things like automatically depositing your inventory and setting up your inventory again for a PK trip or PVM activity. It can also be used to automatically do for example Tithe Farm for hours without any manual input.

What is not possible with Kittykeys is conditional logic. You cannot implement if-else checks/logic such as:
IF boss is protecting against magic when I press hotkey, then wield ranged gear
ELSE wield magic gear

## How to use the DevTools and how does the debug tab work

Developer tools can be found on your side bar, where your other plugins are. If you cannot see the developer tools in your sidebar, make sure the plugin is enabled. If you cannot find developer tools at all, make sure the client you're using supports it.

Developer tools is a plugin that shows wide variety of different overlays which help you make your scripts.
For example turning on "Game objects" on Developer Tools

![Game objects](https://i.imgur.com/DRE1uzD.png)

makes your screen look like this

![Objects overlay](https://i.imgur.com/510FbEF.png)

With the help that tool you can find ObjectIDs quite fast. Using this information as an example, we could for example make automatic script that logs you out. Trigger on `OBJECT_SPAWN 29715` (the bush in Lumbridge) => `IDLE 600` (600 milliseconds) => `LOGOUT`

![Result script](https://i.imgur.com/Duc33Hn.png)

Kittykeys also contains integrated debug tab to help you develop scripts even faster. Debug tab has two sections - "General" and "Events". Sometimes it is needed to get the exact click of something or to understand what each click does. An example for that would be 1 ticking Karambwans at Myths Guild bank.
Navigate to debug tab, click on general and then tick "Send clicks to chat".

Now use your karambwan on the range - you will see something like `CUSTOM 25 0 3142 0 9764864` in your game chatbox. First number 25 is MenuActionID that represents clicking on widget that has target. Number 0 in this case is "Use". Number 3142 is itemID for raw karambwan. Number 0 second time means the position of the item in your inventory. There are 28 inventory slots, where first slot is 0 and last slot is 27. Number 9764864 stands for WidgetID for inventory container.

The "Events" part contains mostly the same things as Developer tools, however it has some extra options and is way easier to use.
An example for getting data through the debug tab would be "ANIMATION_SELF" and making Armadyl godsword into Granite maul special attack.

Commands:
* WIELD ARMADYL_GODSWORD
* SPECIAL
* TARGET
* ANIMATION_SELF 7644
* WIELD GRANITE_MAUL
* SPECIAL
* TARGET 

This hotkey has a trigger inside the script, which means it will wait for animation by ID 7644 (which is armadyl special attack animation), to make sure that the granite maul part is only ran after the godsword part has already ran so the script works as intended.

![Animation script](https://i.imgur.com/T6oPy2S.png)

## How to build a script and how to use the given tools

Making a script with KittyKeys is not as hard as it seems, once you understand how to use the given tools. When making a script, think about how you would do it manually by hand. In this example we build an auto script to create platebodys at Varrock west bank anvil. Use the debug tab and developer tools as your help source.

Explanation of flow before you start making the script:

In a normal run of creating platebodies at Varrock west bank anvil you would open bank, withdraw bars, click on anvil, click on the option of creating platebodies, wait till all the bars are done, click on bank, deposit inventory and repeat the entire process over and over again.

* To find the bank booth ObjectID you want to use the game objects on the developer tools
* To find the ItemID of the bar you want you can use debug tab examine option or clicks to chat
* To find the anvil ObjectID you want to use game objects again (or use name of the game object!)
* The interface of creating platebodies is a Widget. For that you want to turn on WIDGET_SPAWN in your debug tab events section. This will send a chat message into your in-game chatbox with the correct WidgetID number.
* Waiting for the the platebodies to be finished can be a bit of trial and error. A helpful tool is using a stopwatch. Let's say the inventory takes 10 seconds to finish. You may therefore for example opt in to use command "SLEEP 10000" to wait 10 seconds.
* To finish the script you want to find a loop (how to trigger the script to run again), in this case it would be the best option to go with the bank interface popup.

After doing all these step by step, put them together in an auto script.