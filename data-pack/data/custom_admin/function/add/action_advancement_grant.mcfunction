# Eylem Ekle: Başarım Ver (MAKRO) — {id:"...", advancement:"minecraft:story/mine_stone", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"advancement_grant",params:{advancement:"$(advancement)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Başarım verme eylemi eklendi: ","color":"green"},{"text":"$(advancement)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
