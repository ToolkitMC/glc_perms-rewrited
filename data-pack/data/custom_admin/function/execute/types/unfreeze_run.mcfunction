# UNFREEZE RUN (MAKRO) — {player:"OyuncuAdi"}
# BUG FIX: gulce_frozen tag ve slowness efekti de temizleniyor.
$execute as $(player) run tag @s remove gulce.freeze
$execute as $(player) run tag @s remove gulce_frozen
$execute as $(player) run effect clear @s minecraft:slowness
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"green","bold":true},{"text":"Dondurma kaldırıldı.","color":"green"}]
