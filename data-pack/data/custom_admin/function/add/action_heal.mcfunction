# Eylem Ekle: İyileştir (MAKRO) — {id:"...", amount:10, player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"heal",params:{amount:$(amount)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İyileştirme eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" +","color":"gray"},{"text":"$(amount)","color":"green"}]
$function custom_admin:add/register_perm {id:"$(id)"}
