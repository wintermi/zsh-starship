# zsh-starship

A zsh plugin to manage the Starship prompt, along with providing a default powerline like theme.

## Install

Using the [:zap: Zap](https://www.zapzsh.org/) minimal zsh plugin manager, add the following to your `.zshrc`

```sh
# Install plugin
plug "wintermi/zsh-starship"
```

## Prerequisite Checks

A check will be performed to verify that `starship` has been installed:

- [`starship`](https://starship.rs/) - The minimal, blazing-fast, and infinitely customizable prompt for any shell!

## Configure a Custom Theme

This plugin installs its own powerline theme and will default to this unless you override via one of the following two options.

- Setting the `STARSHIP_CONFIG` environment variable to the location of your custom Starship theme configuration file.
- Custom Starship theme configuration file can be found at `$HOME/.config/starship.toml`.

As shown in the below examples:

```sh
# Example override of the STARSHIP_CONFIG environment variable
export STARSHIP_CONFIG="$HOME/custom_config.toml"
plug "wintermi/zsh-starship"

# Custom configuration file has been created using the default STARSHIP
# location of "$HOME/.config/starship.toml"
plug "wintermi/zsh-starship"
```

## License

The **zsh-starship** plugin is released under the [Apache License 2.0](https://github.com/wintermi/zsh-starship/blob/main/LICENSE) unless explicitly mentioned in the file header.
