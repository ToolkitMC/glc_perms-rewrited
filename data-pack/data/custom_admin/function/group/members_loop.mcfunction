function custom_admin:group/members_entry with storage mc:_ temp.group_members[0]
data remove storage mc:_ temp.group_members[0]
execute if data storage mc:_ temp.group_members[0] run function custom_admin:group/members_loop
