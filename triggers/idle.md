---
title: IDLE
description: Triggers when player returns to idle
parent: Triggers
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
IDLE [minMs] [maxMs] 

minMs - Minimum milliseconds to stay in idle before trigger is valid
maxMs - Maximum milliseconds to stay in idle before trigger is valid - leaving maxMS out will idle exactly for minMS
```

## Examples

```java
IDLE
IDLE 1500
IDLE 5000 9000
```

## Notes


## Demos

![](https://i.imgur.com/nL0Ghw3.mp4)

