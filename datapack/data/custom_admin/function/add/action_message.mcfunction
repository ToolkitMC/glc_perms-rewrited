# MACRO — {id, text, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"message",params:{text:"$(text)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Mesaj eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
