data modify storage mc:_ temp.weather set from storage mc:_ temp.params.weather
execute if data storage mc:_ temp.params.duration run data modify storage mc:_ temp.duration set from storage mc:_ temp.params.duration
execute unless data storage mc:_ temp.params.duration run data modify storage mc:_ temp.duration set value "1000"
data modify storage mc:_ temp.player set from storage mc:_ temp.ep
function custom_admin:execute/types/weather_run with storage mc:_ temp
