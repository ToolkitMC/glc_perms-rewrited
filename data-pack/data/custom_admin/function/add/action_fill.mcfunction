# Eylem Ekle: Alan Doldur (MAKRO) — {id:"...", x1:"0",y1:"64",z1:"0", x2:"10",y2:"64",z2:"10", block:"minecraft:stone"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"fill",params:{x1:"$(x1)",y1:"$(y1)",z1:"$(z1)",x2:"$(x2)",y2:"$(y2)",z2:"$(z2)",block:"$(block)"},player:"@s"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Doldurma eylemi eklendi: ","color":"green"},{"text":"$(block)","color":"yellow"}]
