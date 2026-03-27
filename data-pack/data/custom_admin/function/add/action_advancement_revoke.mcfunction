# Eylem Ekle: Başarım Geri Al (MAKRO) — {id:"...", advancement:"minecraft:story/mine_stone", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"advancement_revoke",params:{advancement:"$(advancement)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Başarım geri alma eylemi eklendi: ","color":"green"},{"text":"$(advancement)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
