# MAKRO — {id, name}
$data modify storage mc:handler data.kits append value {id:"$(id)",name:"$(name)",items:[]}
$tellraw @s ["",{"text":"[KİT] ","color":"green","bold":true},{"text":"Kit oluşturuldu: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" (","color":"gray"},{"text":"$(name)","color":"white"},{"text":")","color":"gray"}]
$tellraw @s ["",{"text":"İtem eklemek için: ","color":"gray"},{"text":"/function custom_admin:kit/add_item {kit_id:\"$(id)\",item:\"minecraft:diamond\",count:1}","color":"aqua"}]
