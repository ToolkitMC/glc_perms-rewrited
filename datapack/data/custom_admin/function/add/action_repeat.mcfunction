# MAKRO — {id, target_id, times, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"repeat",params:{target_id:"$(target_id)",times:0},player:"$(player)"}
$scoreboard players set #_rep_tmp gulce_id $(times)
execute store result storage mc:handler data.actions[-1].params.times int 1 run scoreboard players get #_rep_tmp gulce_id
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Repeat eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" ($(times)x → $(target_id))","color":"gray"}]
