# MACRO — {name}
$data remove storage mc:handler data.players[{name:"$(name)"}]
$scoreboard players reset $(name) gulce_id
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu silindi: ","color":"red"},{"text":"$(name)","color":"yellow"}]
