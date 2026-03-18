execute if data storage mc:_ temp.params.x run data modify storage mc:_ temp.x set from storage mc:_ temp.params.x
execute if data storage mc:_ temp.params.y run data modify storage mc:_ temp.y set from storage mc:_ temp.params.y
execute if data storage mc:_ temp.params.z run data modify storage mc:_ temp.z set from storage mc:_ temp.params.z
execute unless data storage mc:_ temp.params.x run data modify storage mc:_ temp.x set value "~"
execute unless data storage mc:_ temp.params.y run data modify storage mc:_ temp.y set value "~"
execute unless data storage mc:_ temp.params.z run data modify storage mc:_ temp.z set value "~"
execute if data storage mc:_ temp.params.power run data modify storage mc:_ temp.power set from storage mc:_ temp.params.power
execute unless data storage mc:_ temp.params.power run data modify storage mc:_ temp.power set value "4"
data modify storage mc:_ temp.player set from storage mc:_ temp.ep
function custom_admin:execute/types/explosion_run with storage mc:_ temp
