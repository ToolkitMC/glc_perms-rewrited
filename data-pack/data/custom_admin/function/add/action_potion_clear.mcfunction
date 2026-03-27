# Eylem Ekle: Efekt Temizle (MAKRO) — {id:"...", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"potion_clear",params:{},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Efekt temizleme eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
