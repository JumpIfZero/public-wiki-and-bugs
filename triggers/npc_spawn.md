---
title: NPC_SPAWN
description: When the specified NPC spawn snearby, this trigger is hit.

parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
NPC_SPAWN NPC_Name|NPC_ID
```

- **`NPC_Name`** : The string name of an NPC. When specifying an NPC by name, use underscores instead of spaces, and do not use quotes; in this mode, you can also use asterisks as wildcards
- **`NPC_ID`** : The integer ID of an NPC.

## Examples 

```js
NPC_SPAWN 6611
```

## Notes

- Find NPC IDs using Dev Tools -> NPCs
- Used with SET_TARGET for other commands

## Demos

TODO: Demo