# Hazır Multi: Duyuru + Dondur (MAKRO)
# {id:"...", player:"OyuncuAdi", reason:"Sebep"}
# cmd:"broadcast_freeze" → multi/cmd/broadcast_freeze_run makrosu çalışır.
# Duyuru + freeze + kişisel mesaj tek atomik adımda.
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:[{type:"cmd",params:{cmd:"broadcast_freeze",player:"$(player)",reason:"$(reason)"}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Duyuru+Dondur multi eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
