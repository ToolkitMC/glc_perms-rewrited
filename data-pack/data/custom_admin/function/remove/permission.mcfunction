# İzin Tanımı Sil (MAKRO) — {id:"p1"}
# Tanımı siler; bu izne bağlı grup üyeleri skorları korunur (gruplara göre yönetilir).
$execute unless data storage mc:handler data.permissions[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: İzin bulunamadı — ","color":"red"},{"text":"$(id)","color":"yellow"}]
$execute unless data storage mc:handler data.permissions[{id:"$(id)"}] run return 0
$data remove storage mc:handler data.permissions[{id:"$(id)"}]
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin tanımı silindi: ","color":"red"},{"text":"$(id)","color":"yellow"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin tanımı silindi: ","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":" — ","color":"dark_gray"},{"selector":"@s","color":"aqua"}]
