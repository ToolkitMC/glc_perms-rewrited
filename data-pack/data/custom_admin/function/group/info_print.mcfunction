# Grup Detay Yazdır (MAKRO) — storage mc:_ temp.group_info ile çağrılır
$tellraw @s ["",{"text":"--- ","color":"dark_gray"},{"text":"$(name)","color":"light_purple","bold":true},{"text":" (","color":"dark_gray"},{"text":"$(id)","color":"yellow"},{"text":")"," color":"dark_gray"},{"text":" Sv.","color":"dark_gray"},{"text":"$(level)","color":"gold"},{"text":" ---","color":"dark_gray"}]

# Üyeler
execute if data storage mc:_ temp.group_info.members[0] run function custom_admin:group/members_start
execute unless data storage mc:_ temp.group_info.members[0] run tellraw @s ["",{"text":"  Üyeler: ","color":"gray"},{"text":"(yok)","color":"dark_gray"}]

# İzinler
execute if data storage mc:_ temp.group_info.permissions[0] run function custom_admin:group/permissions_start
execute unless data storage mc:_ temp.group_info.permissions[0] run tellraw @s ["",{"text":"  İzinler: ","color":"gray"},{"text":"(yok)","color":"dark_gray"}]
