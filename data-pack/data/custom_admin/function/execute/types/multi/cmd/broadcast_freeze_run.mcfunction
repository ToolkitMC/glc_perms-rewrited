# MAKRO — {cmd_player:"OyuncuAdi", cmd_reason:"Sebep"}
$tellraw @a ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"$(cmd_player)","color":"yellow"},{"text":" donduruldu","color":"red"},{"text":" — ","color":"dark_gray"},{"text":"$(cmd_reason)","color":"gray"}]
$tag $(cmd_player) add gulce_frozen
$execute as $(cmd_player) run tag @s add gulce.freeze
$execute as $(cmd_player) run effect give @s minecraft:slowness 999999 255 true
$execute as $(cmd_player) run tellraw @s ["",{"text":"[GULCE] ","color":"dark_red","bold":true},{"text":"Donduruldunuz. Sebep: ","color":"red"},{"text":"$(cmd_reason)","color":"yellow"}]
