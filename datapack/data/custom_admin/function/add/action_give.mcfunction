# MAKRO — {id, item, count, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"give",params:{item:"$(item)",count:1},player:"$(player)"}
$scoreboard players set #_cnt_tmp gulce_id $(count)
execute store result storage mc:handler data.actions[-1].params.count int 1 run scoreboard players get #_cnt_tmp gulce_id
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Give eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
