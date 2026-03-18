# MACRO — {id, entity, x, y, z, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"summon",params:{entity:"$(entity)",x:"$(x)",y:"$(y)",z:"$(z)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Summon eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
