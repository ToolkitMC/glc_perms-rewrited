# chain_acts kullanır — temp.params'tan bağımsız, execute/action bozamaz
data modify storage mc:_ temp.active_act set from storage mc:_ temp.chain_acts[0]
data remove storage mc:_ temp.chain_acts[0]
function custom_admin:execute/types/ma_exec with storage mc:_ temp
execute if data storage mc:_ temp.chain_acts[0] run function custom_admin:execute/types/ma_loop
