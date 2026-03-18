# MACRO — {id, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi_action_chain",params:{actions:[]},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"action zinciri oluşturuldu: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" — Eylem ekle: ","color":"gray"},{"text":"/function custom_admin:add/multi_item {action_id:\"$(id)\",item:\"eylemID\",list:\"actions\"}","color":"aqua"}]
