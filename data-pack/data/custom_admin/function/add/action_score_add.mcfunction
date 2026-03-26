# Eylem Ekle: Skor Ekle (MAKRO) — {id:"...", objective:"puanlar", amount:10, player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"score_add",params:{objective:"$(objective)",amount:$(amount)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Skor ekleme eylemi eklendi: ","color":"green"},{"text":"$(objective)","color":"yellow"},{"text":" +$(amount)","color":"green"}]
$function custom_admin:add/register_perm {id:"$(id)"}
