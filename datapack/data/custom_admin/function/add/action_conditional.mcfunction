# MAKRO — {id, score_target, objective, min, max, then_id, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"conditional",params:{score_target:"$(score_target)",objective:"$(objective)",min:0,max:999999,then_id:"$(then_id)"},player:"$(player)"}
$scoreboard players set #_min_tmp gulce_id $(min)
$scoreboard players set #_max_tmp gulce_id $(max)
execute store result storage mc:handler data.actions[-1].params.min int 1 run scoreboard players get #_min_tmp gulce_id
execute store result storage mc:handler data.actions[-1].params.max int 1 run scoreboard players get #_max_tmp gulce_id
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Koşullu eylem eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" — $(score_target).$(objective) [$(min)..$(max)] → $(then_id)","color":"gray"}]
