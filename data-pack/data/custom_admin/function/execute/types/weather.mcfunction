data modify storage mc:_ temp.weather set from storage mc:_ temp.params.weather
data modify storage mc:_ temp.duration set from storage mc:_ temp.params.duration
function custom_admin:execute/types/weather_run with storage mc:_ temp
