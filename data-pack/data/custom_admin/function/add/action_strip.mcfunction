# Eylem Ekle: Büyü Temizle (MAKRO) — {id:"...", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"strip",params:{},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Büyü temizleme eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
