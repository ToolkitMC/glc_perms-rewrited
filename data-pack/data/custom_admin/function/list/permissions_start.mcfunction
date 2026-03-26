data modify storage mc:_ temp.perm_list set from storage mc:handler data.permissions
execute if data storage mc:_ temp.perm_list[0] run function custom_admin:list/permissions_loop
data remove storage mc:_ temp.perm_list
