# Eylem Ekle: Çöz (MAKRO) — {id:"...", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"unfreeze",params:{},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Çözme eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
