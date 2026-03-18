# MAKRO — {id}
$data remove storage mc:handler data.kits[{id:"$(id)"}]
$tellraw @s ["",{"text":"[KİT] ","color":"green","bold":true},{"text":"Kit silindi: ","color":"red"},{"text":"$(id)","color":"yellow"}]
