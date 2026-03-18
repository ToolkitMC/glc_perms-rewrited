# MACRO — {id, x, y, z, power, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"explosion",params:{x:"$(x)",y:"$(y)",z:"$(z)",power:"$(power)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Patlama eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
