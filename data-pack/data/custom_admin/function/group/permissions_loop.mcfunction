function custom_admin:group/permissions_entry with storage mc:_ temp.group_perms[0]
data remove storage mc:_ temp.group_perms[0]
execute if data storage mc:_ temp.group_perms[0] run function custom_admin:group/permissions_loop
