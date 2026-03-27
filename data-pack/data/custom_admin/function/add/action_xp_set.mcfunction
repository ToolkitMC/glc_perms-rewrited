# Eylem Ekle: XP Ayarla (MAKRO) — {id:"...", amount:0, mode:"points", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"xp_set",params:{amount:$(amount),mode:"$(mode)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"XP ayarla eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" = $(amount) $(mode)","color":"aqua"}]
$function custom_admin:add/register_perm {id:"$(id)"}
