data modify storage mc:_ temp.attr_name set from storage mc:_ temp.params.attribute
data modify storage mc:_ temp.attr_value set from storage mc:_ temp.params.value
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/attribute_run with storage mc:_ temp
