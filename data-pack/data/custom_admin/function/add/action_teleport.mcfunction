# Add Action: Teleport (MACRO)
# {id:"...", x:"0", y:"64", z:"0", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"teleport",params:{x:"$(x)",y:"$(y)",z:"$(z)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Isinlama eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" > ","color":"gray"},{"text":"$(x) $(y) $(z)","color":"aqua"}]
