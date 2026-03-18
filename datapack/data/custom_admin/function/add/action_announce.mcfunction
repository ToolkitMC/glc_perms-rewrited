# MAKRO — {id, message, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"announce",params:{message:"$(message)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Duyuru eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
