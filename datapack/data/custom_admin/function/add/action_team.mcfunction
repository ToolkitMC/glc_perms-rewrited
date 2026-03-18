# MAKRO — {id, operation, team, player}
# operation: join | leave
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"team",params:{operation:"$(operation)",team:"$(team)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Takım eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
