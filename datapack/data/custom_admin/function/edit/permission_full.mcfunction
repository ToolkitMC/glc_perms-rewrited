# MACRO — {id, player, permission, level}
$data modify storage mc:handler data.permissions[{id:"$(id)"}].player set value "$(player)"
$data modify storage mc:handler data.permissions[{id:"$(id)"}].permission set value "$(permission)"
$data modify storage mc:handler data.permissions[{id:"$(id)"}].level set value $(level)
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
