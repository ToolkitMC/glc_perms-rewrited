# MACRO — {name, uuid}
$data modify storage mc:handler data.players append value {name:"$(name)",uuid:"$(uuid)",permissions:[],actions:[]}
$scoreboard players add $(name) gulce_id 1
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu eklendi: ","color":"green"},{"text":"$(name)","color":"yellow"}]
