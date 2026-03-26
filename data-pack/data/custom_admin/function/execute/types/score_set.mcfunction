data modify storage mc:_ temp.objective set from storage mc:_ temp.params.objective
data modify storage mc:_ temp.value set from storage mc:_ temp.params.value
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/score_set_run with storage mc:_ temp
