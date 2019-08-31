# ☀️ Weather icon in prompt for fish shell

A minimal prompt with a weather icon. It fetches the current weather of Stockholm (easy to change the hard coded longditude and latitude) and shows it in the fish prompt on each new command.

## Looks like this

![Dark terminal](img/terminal_dark.png?raw=true "Title")
![Solarized light iterm](img/iterm_solaris.png?raw=true "Title")

## Requirements

- fish
- curl
- jq

### Install with Homebrew

```
brew install fish curl jq
```

Copy `fish_prompt.fish` and `fish_weather_icon.fish` into the fish-functions directory:

```
~/.config/fish/functions/
```

Also put `fish_title.fish` there if you want to see the weather icon in the terminal's title field.
