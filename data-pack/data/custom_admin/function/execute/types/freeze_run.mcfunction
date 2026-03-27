# FREEZE RUN (MAKRO) — {player:"OyuncuAdi"}
# BUG FIX: jump_boost 128 (amplifier=127) signed byte overflow yapıyor.
# Client, space input'unu isle­ye­mez hale geliyor → oyun donuyor.
# FIX: jump_boost kaldırıldı. Slowness 255 + tick'teki tp @s ~ ~ ~ yeterli.
$tag $(player) add gulce_frozen
$execute as $(player) run tag @s add gulce.freeze
$execute as $(player) run effect give @s minecraft:slowness 999999 255 true
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"dark_red","bold":true},{"text":"Donduruldunuz.","color":"red"}]
