# MAKRO — {id, prefix, message, color, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"broadcast",params:{prefix:"$(prefix)",message:"$(message)",color:"$(color)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Broadcast eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
