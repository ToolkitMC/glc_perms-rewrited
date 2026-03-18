# Array-shift: [0] al → çalıştır → sil → devam et
data modify storage mc:_ temp.active_cmd set from storage mc:_ temp.params.commands[0]
data remove storage mc:_ temp.params.commands[0]
function custom_admin:execute/types/mc_exec with storage mc:_ temp
execute if data storage mc:_ temp.params.commands[0] run function custom_admin:execute/types/mc_loop
