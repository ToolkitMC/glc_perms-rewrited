data modify storage mc:_ temp.tag set from storage mc:_ temp.params.tag
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/tag_remove_run with storage mc:_ temp
