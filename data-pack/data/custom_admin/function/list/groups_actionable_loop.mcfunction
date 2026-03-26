function custom_admin:list/groups_actionable_entry with storage mc:_ temp.group_action_list[0]
data remove storage mc:_ temp.group_action_list[0]
execute if data storage mc:_ temp.group_action_list[0] run function custom_admin:list/groups_actionable_loop
