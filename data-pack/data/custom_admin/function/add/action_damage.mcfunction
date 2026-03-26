# Eylem Ekle: Hasar Ver (MAKRO) — {id:"...", amount:5, player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"damage",params:{amount:$(amount)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Hasar eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" x","color":"gray"},{"text":"$(amount)","color":"red"}]
