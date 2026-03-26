data modify storage mc:_ temp.entity set from storage mc:_ temp.params.entity
data modify storage mc:_ temp.x set from storage mc:_ temp.params.x
data modify storage mc:_ temp.y set from storage mc:_ temp.params.y
data modify storage mc:_ temp.z set from storage mc:_ temp.params.z
function custom_admin:execute/types/summon_run with storage mc:_ temp
