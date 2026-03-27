data modify storage mc:_ temp.adv_id set from storage mc:_ temp.params.advancement
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/advancement_grant_run with storage mc:_ temp
