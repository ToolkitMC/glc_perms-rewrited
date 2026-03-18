data modify storage mc:_ temp.track set from storage mc:_ temp.params.track
execute if data storage mc:_ temp.params.volume run data modify storage mc:_ temp.volume set from storage mc:_ temp.params.volume
execute unless data storage mc:_ temp.params.volume run data modify storage mc:_ temp.volume set value "1"
execute if data storage mc:_ temp.params.pitch run data modify storage mc:_ temp.pitch set from storage mc:_ temp.params.pitch
execute unless data storage mc:_ temp.params.pitch run data modify storage mc:_ temp.pitch set value "1"
data modify storage mc:_ temp.player set from storage mc:_ temp.ep
function custom_admin:execute/types/music_run with storage mc:_ temp
