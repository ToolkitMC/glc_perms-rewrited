# Grup Detayı (MAKRO) — {id:"..."}
# Grubun adını, seviyesini, üyelerini ve izinlerini gösterir.
$data modify storage mc:_ temp.group_info set from storage mc:handler data.groups[{id:"$(id)"}]

execute unless data storage mc:_ temp.group_info run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"HATA: Grup bulunamadı — ","color":"red"},{"text":"$(id)","color":"yellow"}]
execute unless data storage mc:_ temp.group_info run return 0

function custom_admin:group/info_print with storage mc:_ temp.group_info

data remove storage mc:_ temp.group_info
