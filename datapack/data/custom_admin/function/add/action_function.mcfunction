# MACRO — {id, fn, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"function",params:{fn:"$(fn)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Function eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
