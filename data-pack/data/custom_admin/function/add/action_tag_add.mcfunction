# Eylem Ekle: Tag Ekle (MAKRO) — {id:"...", tag:"vip", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"tag_add",params:{tag:"$(tag)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Tag ekleme eylemi eklendi: ","color":"green"},{"text":"$(tag)","color":"yellow"}]
