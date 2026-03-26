data modify storage mc:_ temp.reason set from storage mc:_ temp.params.reason
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/kick_run with storage mc:_ temp
