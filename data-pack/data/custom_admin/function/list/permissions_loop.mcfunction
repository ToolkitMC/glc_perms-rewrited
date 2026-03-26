function custom_admin:list/permissions_entry with storage mc:_ temp.perm_list[0]
data remove storage mc:_ temp.perm_list[0]
execute if data storage mc:_ temp.perm_list[0] run function custom_admin:list/permissions_loop
