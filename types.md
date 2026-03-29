---
title: Script Types
description: Overview of the different script types available in Kittykeys
nav_order: 4
permalink: /types
has_children: false
has_toc: true
---

# Script Types

Kittykeys supports several script types, each with different triggering mechanisms and use cases.

| Type | Trigger | Editor Fields | UI Color | Special |
|------|--------|---------|---------------|---------|---------|
| **HOTKEY** | Keyboard shortcut | Hotkey config, Action bar (optional) | GREEN | Action bar / widget icons |
| **AUTO** | Game event | Trigger input | RED (auto), ORANGE (one-click) | One-click mode |
| **MENU** | Right-click menu | After menu text | AQUA | - |
| **MANUAL** | Menu click matching | Override input | WHITE | 5-param raw match |

---

## HOTKEY

**How it works:** Bind a keyboard shortcut (e.g., Ctrl+A, F1) to trigger the script. Can optionally display a draggable action bar (widget) button in-game.

**Editor fields:** Name, Group, Hotkey selector, Action bar (optional), Commands

**UI Color:** Green

**Special features:**
- Action bar icons - draggable icon in-game that overlays the hotkey icon

---

## AUTO

**How it works:** Triggered automatically by game event triggers. Each trigger condition (e.g., `INVENTORY_EMPTY`, `NPC_SPAWNED`) is registered as an automatic script. Can be ONECLICK mode (BETA).

**Editor fields:** Name, Group, Trigger input, One-click checkbox (beta), Commands

**UI Color:** Red (auto), Orange (one-click)

**Special features:**
- One-click mode - Same as AUTO but script only progresses to next step upon manual click by user

---

## MENU

**How it works:** Adds a menu option in the game. When the option in the context menu is clicked, the script fires.

**Editor fields:** Name, Group, After menu text (the text of the menu option to react to), Commands

**UI Color:** Aqua

---

## MANUAL

**How it works:** Triggers when a specific raw menu click event matches given parameters. Input as 5 comma/space separated format: `MenuAction, Identifier, ItemID, Param0, Param1`. The commands only override the original click if "Consume manual click" checkbox is enabled.

**Editor fields:** Name, Group, Override input, Consume manual click checkbox, Commands

**UI Color:** White

---

## Notes

{: .warning }
Triggers can be used inside the commands box. When a trigger is used, the script engine waits until the trigger fires before proceeding to the next command (wait until condition is met).

**Special features:**
- Can override/consume the default click event
- Uses 5-parameter raw match format
