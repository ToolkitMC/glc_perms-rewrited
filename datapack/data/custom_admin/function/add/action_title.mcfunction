# MACRO — {id, text, subtitle, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"title",params:{text:"$(text)",subtitle:"$(subtitle)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Başlık eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
