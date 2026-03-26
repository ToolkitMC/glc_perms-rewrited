data modify storage mc:_ temp.sr_obj set from storage mc:_ temp.params.objective
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/scoreboard_reset_run with storage mc:_ temp
