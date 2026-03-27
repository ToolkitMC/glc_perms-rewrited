# @s'in dahil olduğu grupları gösterir
data modify storage mc:_ temp.player_check.self_name set from entity @s name
data modify storage mc:_ temp.player_check.groups set from storage mc:handler data.groups
execute if data storage mc:_ temp.player_check.groups[0] run function custom_admin:player/groups_loop
data remove storage mc:_ temp.player_check
