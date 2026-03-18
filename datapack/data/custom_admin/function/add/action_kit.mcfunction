# MAKRO — {id, kit_id, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"kit",params:{kit_id:"$(kit_id)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Kit eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → kit: ","color":"gray"},{"text":"$(kit_id)","color":"aqua"}]
