# Eylem Ekle: Spectate Et (MAKRO) — {id:"...", target:"@e[type=minecraft:ender_dragon,limit=1]", player:"OyuncuAdi"}
# Önce spectator moda geçirir, sonra hedefi izletir.
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"spectate",params:{target:"$(target)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Spectate eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
