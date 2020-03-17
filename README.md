# ☀️ Weather icon in prompt for fish shell

A minimal prompt with a weather icon. It fetches the current weather of Stockholm (easy to change the hard coded longditude and latitude) and shows it in the fish prompt on each new command.

## Looks like this

![Dark terminal](img/terminal_dark.png?raw=true "Title")
![Solarized light iterm](img/iterm_solaris.png?raw=true "Title")

## Requirements

- fish
- curl
- jq

### Install requirements

#### Homebrew (osx)
```
brew install fish curl jq
```
#### Other OS
See:
https://fishshell.com/ https://curl.haxx.se/ https://stedolan.github.io/jq/


### Copy files to fish functions
Copy `fish_prompt.fish` and `fish_weather_icon.fish` into the fish-functions directory:

```
# Warning this will override your current fish_prompt!
cp {fish_prompt.fish, fish_weather_icon.fish} ~/.config/fish/functions/
```
* You can get more detailed information in:
    * [How do I set my prompt](https://github.com/fish-shell/fish-shell/blob/master/doc_src/faq.rst#how-do-i-set-my-prompt)
    * [Autoloading functions](https://github.com/fish-shell/fish-shell/blob/master/doc_src/index.rst#autoloading-functions)

Also put `fish_title.fish` there if you want to see the weather icon in the terminal's title field.
