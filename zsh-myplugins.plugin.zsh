#!/bin/env zsh

_script_dir=$(dirname $0)

# Load all plugins
for plugin in $_script_dir/*/*.plugin.zsh; do
  source $plugin
done
