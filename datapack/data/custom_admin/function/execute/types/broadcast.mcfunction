data modify storage mc:_ temp.prefix set from storage mc:_ temp.params.prefix
data modify storage mc:_ temp.message set from storage mc:_ temp.params.message
data modify storage mc:_ temp.color set from storage mc:_ temp.params.color
function custom_admin:execute/types/broadcast_run with storage mc:_ temp
