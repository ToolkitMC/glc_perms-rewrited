# Eylem Ekle: Skor Ayarla (MAKRO) — {id:"...", objective:"puanlar", value:0, player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"score_set",params:{objective:"$(objective)",value:$(value)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Skor ayarlama eylemi eklendi: ","color":"green"},{"text":"$(objective)","color":"yellow"},{"text":" = $(value)","color":"aqua"}]
$function custom_admin:add/register_perm {id:"$(id)"}
