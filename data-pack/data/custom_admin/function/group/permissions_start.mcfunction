tellraw @s ["",{"text":"  İzinler:","color":"green","bold":true}]
data modify storage mc:_ temp.group_perms set from storage mc:_ temp.group_info.permissions
execute if data storage mc:_ temp.group_perms[0] run function custom_admin:group/permissions_loop
data remove storage mc:_ temp.group_perms
