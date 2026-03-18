# MACRO — {id, command, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"command",params:{command:"$(command)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Komut eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
