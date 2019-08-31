function fish_prompt --description 'Write out the prompt'
    if not set -q __fish_prompt_normal
        set -g __fish_prompt_normal (set_color normal)
    end

    if not set -q __fish_prompt_cwd
        set -g __fish_prompt_cwd (set_color $fish_color_cwd)
    end
    fish_weather_icon &
    set -g fish_prompt_pwd_dir_length 3
    set -lx pwd_tilde_home (string replace $HOME '~' $PWD)
    set -lx splitted (string split -r -m2 / $pwd_tilde_home)[-2 -1]
    set -lx myprompt (string join '/' $splitted)
    set -lx vsc (string replace -r '\((.*)\)' '$1' (__fish_vcs_prompt))
    echo -n -s $__fish_weather_icon ' ' $myprompt
    set_color blue
    echo -n -s $vsc ' '
    set_color normal
end
