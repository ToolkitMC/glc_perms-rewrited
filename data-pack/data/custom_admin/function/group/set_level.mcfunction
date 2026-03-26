# Grup Seviyesi Değiştir (MAKRO) — {id:"...", level:2}
$data modify storage mc:handler data.groups[{id:"$(id)"}].level set value $(level)
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Grup seviyesi güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → Sv.","color":"gray"},{"text":"$(level)","color":"gold"}]
