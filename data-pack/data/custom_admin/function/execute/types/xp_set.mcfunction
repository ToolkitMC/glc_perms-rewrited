data modify storage mc:_ temp.xp_amount set from storage mc:_ temp.params.amount
data modify storage mc:_ temp.xp_mode set from storage mc:_ temp.params.mode
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/xp_set_run with storage mc:_ temp
