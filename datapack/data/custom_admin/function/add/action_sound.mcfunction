# MACRO — {id, sound, volume, pitch, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"sound",params:{sound:"$(sound)",volume:"$(volume)",pitch:"$(pitch)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Ses eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
