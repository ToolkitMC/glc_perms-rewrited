# MAKRO — {id, operation, objective, target, amount, player}
# operation: set | add | remove
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"scoreboard",params:{operation:"$(operation)",objective:"$(objective)",target:"$(target)",amount:0},player:"$(player)"}
$scoreboard players set #_amt_tmp gulce_id $(amount)
execute store result storage mc:handler data.actions[-1].params.amount int 1 run scoreboard players get #_amt_tmp gulce_id
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Scoreboard eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
