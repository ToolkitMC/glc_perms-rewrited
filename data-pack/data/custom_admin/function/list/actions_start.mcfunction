data modify storage mc:_ temp.action_list set from storage mc:handler data.actions
execute if data storage mc:_ temp.action_list[0] run function custom_admin:list/actions_loop
data remove storage mc:_ temp.action_list
