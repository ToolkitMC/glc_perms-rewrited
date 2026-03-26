function custom_admin:execute/perm/member_grant_entry with storage mc:_ temp.perm_mgrant.members[0]
data remove storage mc:_ temp.perm_mgrant.members[0]
execute if data storage mc:_ temp.perm_mgrant.members[0] run function custom_admin:execute/perm/member_grant_loop
