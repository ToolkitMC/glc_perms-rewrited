# Eylem Sil (MAKRO) — {id:"..."}
$execute unless data storage mc:handler data.actions[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Eylem bulunamadı — ","color":"red"},{"text":"$(id)","color":"yellow"}]
$execute unless data storage mc:handler data.actions[{id:"$(id)"}] run return 0
$data remove storage mc:handler data.actions[{id:"$(id)"}]
$scoreboard objectives remove gulce_can_$(id)
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem silindi: ","color":"red"},{"text":"$(id)","color":"yellow"},{"text":" (izin objesi temizlendi)","color":"dark_gray"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem silindi: ","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":" — ","color":"dark_gray"},{"selector":"@s","color":"aqua"}]
