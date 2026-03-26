# Eylem Ekle: Kick (MAKRO) — {id:"...", reason:"Kural ihlali", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"kick",params:{reason:"$(reason)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Kick eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
