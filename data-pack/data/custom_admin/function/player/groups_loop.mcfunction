function custom_admin:player/groups_entry with storage mc:_ temp.player_check.groups[0]
data remove storage mc:_ temp.player_check.groups[0]
execute if data storage mc:_ temp.player_check.groups[0] run function custom_admin:player/groups_loop
