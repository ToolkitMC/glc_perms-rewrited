# Oyuncudan Eylem İzni Al (MAKRO) — {player:"OyuncuAdi", id:"eylem_id"}
$scoreboard players set $(player) gulce_can_$(id) 0
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin alındı: ","color":"red"},{"text":"$(player)","color":"aqua"},{"text":" — ","color":"gray"},{"text":"$(id)","color":"yellow"}]
