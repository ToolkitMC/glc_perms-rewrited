# Eylem Ekle: Dondur (MAKRO) — {id:"...", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"freeze",params:{},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Dondurma eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
