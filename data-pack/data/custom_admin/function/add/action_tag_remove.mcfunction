# Eylem Ekle: Tag Kaldır (MAKRO) — {id:"...", tag:"vip", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"tag_remove",params:{tag:"$(tag)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Tag kaldırma eylemi eklendi: ","color":"green"},{"text":"$(tag)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
