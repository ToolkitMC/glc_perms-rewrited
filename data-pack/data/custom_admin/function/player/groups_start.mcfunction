# @s'in dahil olduğu grupları gösterir
# @s adını storage'a yaz, sonra grupları tara
data modify storage mc:_ temp.player_check.groups set from storage mc:handler data.groups
execute if data storage mc:_ temp.player_check.groups[0] run function custom_admin:player/groups_loop
data remove storage mc:_ temp.player_check
