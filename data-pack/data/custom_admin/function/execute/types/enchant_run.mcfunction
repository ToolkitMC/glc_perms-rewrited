$execute as $(player) run enchant @s $(enchantment) $(lvl)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Büyü eklendi: ","color":"green"},{"text":"$(enchantment) $(lvl)","color":"yellow"}]
