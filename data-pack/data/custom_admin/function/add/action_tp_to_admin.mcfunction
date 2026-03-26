# Eylem Ekle: Adminin Yanına Çek (MAKRO) — {id:"...", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"tp_to_admin",params:{},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Yandına çek eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
