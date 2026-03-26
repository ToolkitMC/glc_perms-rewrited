$execute as $(player) run tag @s remove gulce_frozen
$execute as $(player) run effect clear @s minecraft:slowness
$execute as $(player) run effect clear @s minecraft:jump_boost
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"green","bold":true},{"text":"Dondurma kaldırıldı.","color":"green"}]
