function custom_admin:execute/perm/member_revoke_entry with storage mc:_ temp.perm_mrevoke.members[0]
data remove storage mc:_ temp.perm_mrevoke.members[0]
execute if data storage mc:_ temp.perm_mrevoke.members[0] run function custom_admin:execute/perm/member_revoke_loop
