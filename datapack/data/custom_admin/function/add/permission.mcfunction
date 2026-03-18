# MACRO — {id, player, permission, level}
$data modify storage mc:handler data.permissions append value {id:"$(id)",player:"$(player)",permission:"$(permission)",level:$(level)}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
