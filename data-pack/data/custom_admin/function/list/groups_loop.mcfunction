function custom_admin:list/groups_entry with storage mc:_ temp.group_list[0]
data remove storage mc:_ temp.group_list[0]
execute if data storage mc:_ temp.group_list[0] run function custom_admin:list/groups_loop
