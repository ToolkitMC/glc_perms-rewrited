data modify storage mc:_ temp.active_fn set from storage mc:_ temp.params.functions[0]
data remove storage mc:_ temp.params.functions[0]
function custom_admin:execute/types/mf_exec with storage mc:_ temp
execute if data storage mc:_ temp.params.functions[0] run function custom_admin:execute/types/mf_loop
