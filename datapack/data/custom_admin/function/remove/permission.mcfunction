# MACRO — {id}
$data remove storage mc:handler data.permissions[{id:"$(id)"}]
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin silindi: ","color":"red"},{"text":"$(id)","color":"yellow"}]
