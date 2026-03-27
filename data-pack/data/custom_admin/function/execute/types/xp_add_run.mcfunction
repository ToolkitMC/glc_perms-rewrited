$execute as $(player) run experience add @s $(xp_amount) $(xp_mode)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"XP eklendi: ","color":"green"},{"text":"$(xp_amount) $(xp_mode)","color":"yellow"}]
