function custom_admin:execute/perm/grant_entry with storage mc:_ temp.perm_grant.perms[0]
data remove storage mc:_ temp.perm_grant.perms[0]
execute if data storage mc:_ temp.perm_grant.perms[0] run function custom_admin:execute/perm/grant_loop
