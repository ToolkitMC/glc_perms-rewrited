# Eylem Ekle: Öldür (MAKRO) — {id:"...", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"kill",params:{},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Öldürme eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
