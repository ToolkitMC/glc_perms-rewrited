# MACRO — {id, player}
# Boş commands listesiyle oluştur, sonra append ile item ekle
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi_command",params:{commands:[]},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"multi_command oluşturuldu: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" — Komut eklemek için: ","color":"gray"},{"text":"/function custom_admin:add/multi_item {action_id:\"$(id)\",item:\"KOMUT\",list:\"commands\"}","color":"aqua"}]
