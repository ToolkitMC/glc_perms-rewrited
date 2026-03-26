# Eylem İzin Gereksinimi Kaldır (MAKRO) — {id:"..."}
$data remove storage mc:handler data.actions[{id:"$(id)"}].required_permission
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin gereksinimi kaldırıldı: ","color":"yellow"},{"text":"$(id)","color":"yellow"},{"text":" — artık izin gerekmez.","color":"gray"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin gereksinimi kaldırıldı: ","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":" (","color":"dark_gray"},{"selector":"@s","color":"aqua"},{"text":")","color":"dark_gray"}]
