# params.actions listesini ayrı yere kopyala (execute/action tarafından bozulmaz)
data modify storage mc:_ temp.chain_acts set from storage mc:_ temp.params.actions
execute if data storage mc:_ temp.chain_acts[0] run function custom_admin:execute/types/ma_loop
