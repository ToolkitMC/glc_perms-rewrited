# İzin Seviyesi Değiştir (MAKRO) — {id:"...", level:3}
$data modify storage mc:handler data.permissions[{id:"$(id)"}].level set value $(level)
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin seviyesi güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → Sv.","color":"gray"},{"text":"$(level)","color":"gold"}]
