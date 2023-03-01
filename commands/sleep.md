---
title: SLEEP
description: Pauses the script for the given number of milliseconds, or for a random amount of time within the given range.

parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax


```java
SLEEP [Milliseconds|minMS] [maxMS]
```
- **`Milliseconds`** : If only a single parameter is supplied, the exact number of milliseconds to wait before continuing.
- **`minMS`** : When two values are supplied to the sleep command, this is the minimum number of milliseconds that the script will pause before continuing.
- **`maxMS`** : When two values are supplied to the sleep command, this is the maximum number of milliseconds that the script will pause before continuing.

## Examples


```java
// Wait exactly 750 milliseconds every time
SLEEP 750
// Wait for some time between half a second and 1.5 seconds
SLEEP 500 1500
```

## Notes


- 1000 ms == 1 second. 500ms == 0.5 seconds.
- The average game tick is about 0.6 seconds (600ms), but this is not truly constant. 
  Consider using the **[TICK](#tick)** command instead if your actions depend on accurate game ticks.

<!-- 
## Demos
 
There is no demo for sleep. Nothing interesting happens. ;-)
-->
