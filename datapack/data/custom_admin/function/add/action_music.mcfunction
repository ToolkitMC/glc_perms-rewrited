# MACRO — {id, track, volume, pitch, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"music",params:{track:"$(track)",volume:"$(volume)",pitch:"$(pitch)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Müzik eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
