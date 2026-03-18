# with storage mc:_ temp — exec.id ve ep mevcut
data modify storage mc:_ temp.log_action set from storage mc:_ temp.exec.type
data modify storage mc:_ temp.log_player set from storage mc:_ temp.ep
function custom_admin:log/add_internal with storage mc:_ temp
