data modify storage mc:_ temp.group_list set from storage mc:handler data.groups
execute if data storage mc:_ temp.group_list[0] run function custom_admin:list/groups_loop
data remove storage mc:_ temp.group_list
