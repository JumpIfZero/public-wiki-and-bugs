---
title: PLUGINMESSAGE
description: Sends message to another plugin
parent: Commands
---

# {{ page.title }}

_{{ page.description }}_

## Syntax

```java
PLUGINMESSAGE name [arg1,] 

name - Plugin name to send message to
arg1, - Arguments to send to plugin
```

## Examples

```java
PLUGINMESSAGE name arg1 arg2...
```

## Notes

- To use this command from another plugin or your code to send message TO KittyKeys plugin, construct PluginMessage with name "KittyKeys" and pass command as params map with key "params". Example:  eventBus.post(new PluginMessage("", "KittyKeys", Map.of("params", new String[]{"PROTECT_FROM_MELEE"})));

## Demos

![](N/A)

