---
title: 3rd party integrations
nav_order: 4
description: ""
permalink: /integration
---

# 3rd party integrations for KittyKeys

If you have bought plugins from other communities, some of them are available also via KittyKeys. This page explains what they are and how to use them, however rely to their own documentation for most up-to-date information.

## Paisti plugins webwalker integration

{: .warning }
You must have Paisti's webwalker and utils on and must have configured the plugin

```
Navigates to specific location using Paisti webwalker
  → DEBUG pwebwalk x y z
```

```
Navigates to nearest bank using Paisti webwalker
  → DEBUG pwebwalk bank
```

```
Navigates to next quest helper tile using Paisti webwalker
  → DEBUG pwebwalk questhelper
```

## Cuell (RLPL) webwalker integration

{: .warning }
You must have RLPL webwalker and shared utils on and must have configured the plugin

```
Navigates to specific location using RLPL webwalker
  → DEBUG CATWALK X Y Z
```

```
Navigates to specific location on plane 0 (default) using RLPL webwalker
  → DEBUG CATWALK X Y
```

```
Navigates to selected bank (does not open the bank) using RLPL webwalker
  → DEBUG CATWALK <BANK>
```

{: .highlight-title }
You can use trigger `MESSAGE 101 FINISHED_CATWALK` to wait until the catwalking has finished

List of available banks:
```
NEAREST
AL_KHARID_BANK
ANGLER_FISHING_BANK
ARDOUGNE_NORTH_BANK
ARDOUGNE_SOUTH_BANK
BARBARIAN_OUTPOST_BANK
BURGH_DE_ROTT_BANK
CAMDOZAAL_BANK
CANIFIS_BANK
CASTLE_WARS_BANK
CATHERBY_BANK
CHARCOAL_BURNERS_BANK
CORSAIR_COVE_BANK
CRAFTING_GUILD_BANK
DARKMEYER_BANK
DRAYNOR_BANK
DUEL_ARENA_BANK
EDGEVILLE_BANK
FALADOR_EAST_BANK
FALADOR_WEST_BANK
FEROX_ENCLAVE_BANK
FISHING_GUILD_BANK
FOSSIL_ISLAND_BANK
GRAND_EXCHANGE_BANK
GRAND_TREE_WEST_BANK
GRAND_TREE_SOUTH_BANK
HOSIDIUS_BANK
JATIZSO_BANK
LLETYA_BANK
LOVAKENGJ_SULFUR_BANK_1
LOVAKENGJ_SULFUR_BANK_2
LUMBRIDGE_BANK
LUNAR_ISLE_BANK
MINING_GUILD_BANK
MOTHERLODE_MINE_BANK
MOUNT_KARUULM_BANK
NEITIZNOT_BANK
PORT_KHAZARD_BANK
PORT_PISCARILIUS_BANK
ROGUES_DEN
SEERS_VILLAGE_BANK
SHANTAY_PASS_BANK
SHILO_VILLAGE_BANK
TREE_GNOME_STRONGHOLD_BANK
VARROCK_EAST_BANK
VARROCK_WEST_BANK
VER_SINHAZA_BANK
WOODCUTTING_GUID_BANK
YANILLE_BANK
VARLAMORE_BANK
```

## Storm client explorer (webwalker) integration

{: .warning }
You must have Storm explorer turned on and must have configured the plugin

```
Navigates to specific location using Storm explorer
  → DEBUG EXPLORER X Y Z
```

{: .highlight-title }
You can use trigger `MESSAGE 101 FINISHED_EXPLORING` to wait until the catwalking has finished

## RLPL break handler integration

```
Registers KittyKeys for break handler. Needs to be ran just once (such as hotkey script).
  → DEBUG CATBREAK REGISTER 
```

```
Unregisters KittyKeys for break handler. Needs to be ran just once when quiting (such as hotkey script).
  → DEBUG CATBREAK UNREGISTER
```

```
Starts breaking according to the schedules you'be setup, remember to run register before calling start.
  → DEBUG CATBREAK START
```

```
Stops breaking, pair with unregister.
  → DEBUG CATBREAK STOP
```
