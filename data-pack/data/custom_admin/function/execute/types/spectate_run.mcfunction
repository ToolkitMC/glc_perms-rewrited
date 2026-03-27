$execute as $(player) run gamemode spectator @s
$execute as $(player) run spectate $(target)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"dark_aqua","bold":true},{"text":"Spectate modu: ","color":"aqua"},{"text":"$(target)","color":"yellow"}]
