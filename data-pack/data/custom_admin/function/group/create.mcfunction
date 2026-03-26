# Grup Oluştur (MAKRO) — {id:"...", name:"...", level:1}
$execute if data storage mc:handler data.groups[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Bu ID zaten var — ","color":"red"},{"text":"$(id)","color":"yellow"}]
$execute if data storage mc:handler data.groups[{id:"$(id)"}] run return 0
$data modify storage mc:handler data.groups append value {id:"$(id)",name:"$(name)",level:$(level),members:[],permissions:[]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Grup oluşturuldu: ","color":"green"},{"text":"$(name)","color":"light_purple"},{"text":" (","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":")","color":"gray"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Yeni grup: ","color":"gray"},{"text":"$(id)","color":"yellow"},{"text":" — ","color":"dark_gray"},{"selector":"@s","color":"aqua"}]
