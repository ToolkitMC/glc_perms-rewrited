# Oyuncuya Eylem İzni Ver (MAKRO) — {player:"OyuncuAdi", id:"eylem_id"}
$scoreboard players set $(player) gulce_can_$(id) 1
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin verildi: ","color":"green"},{"text":"$(player)","color":"aqua"},{"text":" → ","color":"gray"},{"text":"$(id)","color":"yellow"}]
