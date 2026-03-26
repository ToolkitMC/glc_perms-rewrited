function custom_admin:group/delete_member_entry with storage mc:_ temp.del_group.members[0]
data remove storage mc:_ temp.del_group.members[0]
execute if data storage mc:_ temp.del_group.members[0] run function custom_admin:group/delete_member_loop
