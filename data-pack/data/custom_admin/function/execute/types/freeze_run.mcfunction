$tag $(player) add gulce_frozen
$execute as $(player) run tag @s add gulce_frozen
$execute as $(player) run effect give @s minecraft:slowness 999999 255 true
$execute as $(player) run effect give @s minecraft:jump_boost 999999 128 true
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"dark_red","bold":true},{"text":"Donduruldunuz.","color":"red"}]
