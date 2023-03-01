---
title: IDLE
description: When the player returns to idle, this trigger is hit.
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax
```java
IDLE [minMS] [maxMS]
```

- **`minMS`** : When one or two values are supplied, this is the exact or minimum number of milliseconds that the player will be idle before the trigger activates.
- **`maxMS`** : When two values are supplied, this is the maximum number of milliseconds that the player will be idle before the trigger activates. A random number between minMS and MaxMS is selected for the trigger delay.
