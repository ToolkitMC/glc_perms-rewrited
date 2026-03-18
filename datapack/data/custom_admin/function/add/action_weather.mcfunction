# MACRO — {id, weather, duration, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"weather",params:{weather:"$(weather)",duration:"$(duration)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Hava eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
