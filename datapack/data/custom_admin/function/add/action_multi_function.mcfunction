# MACRO — {id, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi_function",params:{functions:[]},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"multi_function oluşturuldu: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" — Fn ekle: ","color":"gray"},{"text":"/function custom_admin:add/multi_item {action_id:\"$(id)\",item:\"ns:path\",list:\"functions\"}","color":"aqua"}]
