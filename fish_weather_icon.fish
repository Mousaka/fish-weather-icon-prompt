function fish_weather_icon --description 'Prints current weather as an emoji'
    set -lx weather_code (curl -s https://opendata-download-metfcst.smhi.se/api/category/pmp3g/version/2/geotype/point/lon/18.063240/lat/59.334591/data.json | jq '.timeSeries[0].parameters[] | select(.name | contains ("Wsymb2")) | .values[0]')
    if test -n "$weather_code"
        set -g __fish_weather_icon (_fish_emoji_weather $weather_code)
    end
end

function _fish_emoji_weather
    switch $argv[1]
        case 1
            echo ☀️
        case 2
            echo 🌤
        case 3
            echo ⛅️
        case 4
            echo 🌥
        case 5
            echo ☁️
        case 6
            echo ☁️
        case 7
            echo 🌫
        case 8
            echo 🌧
        case 9
            echo 🌧🌧
        case 10
            echo 🌧🌧
        case 11
            echo ⛈
        case 12
            echo 🌨
        case 13
            echo 🌨
        case 14
            echo 🌨🌨
        case 15
            echo 🌨
        case 16
            echo 🌨🌨
        case 17
            echo 🌨🌨
        case 18
            echo 🌧
        case 19
            echo 🌧🌧
        case 20
            echo 🌧🌧
        case 21
            echo ⛈
        case 22
            echo 🌨
        case 23
            echo 🌨🌨
        case 24
            echo 🌨🌨
        case 25
            echo 🌨
        case 26
            echo 🌨🌨
        case 27
            echo 🌨🌨
        case '*'
            echo ❔
    end
end