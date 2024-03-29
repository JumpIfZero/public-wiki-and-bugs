---
title: RUNSCRIPT
description: Runs script content by script name. Script is run to completion, this script will continue after.
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
RUNSCRIPT scriptName [scriptAmount] 

scriptName - Existing script name, case sensitive exact match
scriptAmount - Number of script instances to launch
```

## Examples

```java
RUNSCRIPT pureMageGear
RUNSCRIPT mainRangeGear
RUNSCRIPT makePotion 9
```

## Notes

- Script that is being triggered does not need to be enabled
- See command ABORT_DISABLED for more advanced use

## Demos

![](https://i.imgur.com/3sA7U3f.gif)

