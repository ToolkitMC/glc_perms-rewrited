$execute as $(player) run experience set @s $(xp_amount) $(xp_mode)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"XP ayarlandı: ","color":"green"},{"text":"$(xp_amount) $(xp_mode)","color":"yellow"}]
