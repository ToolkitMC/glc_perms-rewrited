# Eylem Ekle: XP Ekle (MAKRO) — {id:"...", amount:100, mode:"points", player:"OyuncuAdi"}
# mode: "points" veya "levels"
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"xp_add",params:{amount:$(amount),mode:"$(mode)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"XP ekleme eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" +$(amount) $(mode)","color":"aqua"}]
$function custom_admin:add/register_perm {id:"$(id)"}
