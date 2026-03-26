function custom_admin:execute/perm/revoke_entry with storage mc:_ temp.perm_revoke.perms[0]
data remove storage mc:_ temp.perm_revoke.perms[0]
execute if data storage mc:_ temp.perm_revoke.perms[0] run function custom_admin:execute/perm/revoke_loop
