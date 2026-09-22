---
title: Exposed Variables
description: List of exposed variables available in Kittykeys scripts
nav_order: 5
permalink: /exposed
has_children: false
has_toc: true
---

# Exposed Variables

Kittykeys exposes various variables that can be used in your scripts. These variables provide access to game state and information.

## Misc Variables

| Variable | Description |
|----------|-------------|
| `$HITSPLAT` | Last hitsplat damage value |
| `$HITSPLAT_SELF` | Last hitsplat damage on yourself |
| `$TARGET_HP_PERCENTAGE` | Current target's health percentage (0-100) |
| `$CURRENT_HITPOINTS` | Your current hitpoints value |
| `$SPEC_ENERGY` | Current special attack energy percentage |
| `$TARGET` | Current target entity name |
| `$WORLD` | Current world number |
| `$RSN` | Your RSN |
| `$EMPTY_INV_SLOTS` | Number of empty inventory slots |

## Skill Variables

| Variable | Description |
|----------|-------------|
| `$ATTACK` | Attack level |
| `$STRENGTH` | Strength level |
| `$DEFENCE` | Defence level |
| `$RANGED` | Ranged level |
| `$PRAYER` | Prayer level |
| `$MAGIC` | Magic level |
| `$RUNECRAFT` | Runecraft level |
| `$CONSTRUCTION` | Construction level |
| `$AGILITY` | Agility level |
| `$HERBLORE` | Herblore level |
| `$THIEVING` | Thieving level |
| `$CRAFTING` | Crafting level |
| `$FLETCHING` | Fletching level |
| `$SLAYER` | Slayer level |
| `$HUNTER` | Hunter level |
| `$MINING` | Mining level |
| `$SMITHING` | Smithing level |
| `$FISHING` | Fishing level |
| `$COOKING` | Cooking level |
| `$FIREMAKING` | Firemaking level |
| `$WOODCUTTING` | Woodcutting level |
| `$FARMING` | Farming level |
| `$SAILING` | Sailing level |

## Usage Example

Variables can be used in commands;

```
ISVAR $TARGET_HP_PERCENTAGE <50
SPECIAL
```