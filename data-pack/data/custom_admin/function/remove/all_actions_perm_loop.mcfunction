function custom_admin:remove/all_actions_perm_entry with storage mc:_ temp.uninstall_perms[0]
data remove storage mc:_ temp.uninstall_perms[0]
execute if data storage mc:_ temp.uninstall_perms[0] run function custom_admin:remove/all_actions_perm_loop
