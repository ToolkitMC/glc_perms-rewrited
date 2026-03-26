# Grup Sil (MAKRO) — {id:"..."}
# Üyelerin tüm grup izin skorlarını temizler, ardından grubu siler.
$execute unless data storage mc:handler data.groups[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Grup bulunamadı — ","color":"red"},{"text":"$(id)","color":"yellow"}]
$execute unless data storage mc:handler data.groups[{id:"$(id)"}] run return 0
$data modify storage mc:_ temp.del_group set from storage mc:handler data.groups[{id:"$(id)"}]
execute if data storage mc:_ temp.del_group.members[0] run function custom_admin:group/delete_member_loop
data remove storage mc:_ temp.del_group
$data remove storage mc:handler data.groups[{id:"$(id)"}]
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Grup silindi: ","color":"red"},{"text":"$(id)","color":"yellow"},{"text":" — üyeler temizlendi.","color":"dark_gray"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Grup silindi: ","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":" — ","color":"dark_gray"},{"selector":"@s","color":"aqua"}]
