#!/usr/bin/env zsh
# shellcheck disable=SC1090

# Exit if the 'starship' command can not be found
if ! (( $+commands[starship] )); then
    echo "WARNING: 'starship' command not found"
    return
fi

# If the 'STARSHIP_CONFIG' environment variable is not populated then set
# the default theme configuration to the one provided with this plugin
if [[ -z "$STARSHIP_CONFIG" ]]; then
    export STARSHIP_CONFIG="${0:A:h}/theme/starship.toml"
fi

# Init cache directory for `starship` command
local INIT_CACHE_DIR="${0:A:h}/init"

# Only regenerate init script if older than 7 days, or does not exist
if [[ ! -f "$INIT_CACHE_DIR/_starship"  ||  ! $(find "$INIT_CACHE_DIR/_starship" -newermt "7 days ago" -print) ]]; then
    starship init zsh --print-full-init >| "$INIT_CACHE_DIR/_starship"
fi

# Initialise the Starship Prompt
source "$INIT_CACHE_DIR/_starship"
