tellraw @s ["",{"text":"  Üyeler:","color":"aqua","bold":true}]
data modify storage mc:_ temp.group_members set from storage mc:_ temp.group_info.members
execute if data storage mc:_ temp.group_members[0] run function custom_admin:group/members_loop
data remove storage mc:_ temp.group_members
