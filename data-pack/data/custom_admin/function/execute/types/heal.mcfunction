data modify storage mc:_ temp.amount set from storage mc:_ temp.params.amount
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/heal_run with storage mc:_ temp
