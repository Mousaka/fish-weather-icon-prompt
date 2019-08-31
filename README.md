# ☀️ Weather icon fish setup (opinionated)

A minimal prompt with a weather icon. It fetches the current weather of Stockholm and shows it in the fish prompt on each new command.

Looks like this:

## Requirements

- fish
- curl
- jq

### Install

```
brew install fish curl jq
```

Copy `fish_prompt.fish` and `fish_weather_icon.fish` to the fish-functions directory:

```
~/.config/fish/functions/
```

Also put `fish_title.fish` there if you want to see the weather icon in the shell title field. (optional)
