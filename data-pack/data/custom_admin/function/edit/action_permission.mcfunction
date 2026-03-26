# Eylem İzin Gereksinimi Ayarla (MAKRO) — {id:"...", permission:"izin_adı"}
$data modify storage mc:handler data.actions[{id:"$(id)"}].required_permission set value "$(permission)"
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin gereksinimi ayarlandı: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(permission)","color":"aqua"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin gereksinimi: ","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":" → ","color":"dark_gray"},{"text":"$(permission)","color":"aqua"},{"text":" (","color":"dark_gray"},{"selector":"@s","color":"aqua"},{"text":")","color":"dark_gray"}]
