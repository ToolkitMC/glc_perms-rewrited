# Eylem Ekle: Envanter Temizle (MAKRO)
# {id:"...", item:"minecraft:dirt", count:1, player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"clear",params:{item:"$(item)",count:$(count)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Temizleme eylemi eklendi: ","color":"green"},{"text":"$(item)","color":"yellow"},{"text":" x","color":"gray"},{"text":"$(count)","color":"aqua"}]
