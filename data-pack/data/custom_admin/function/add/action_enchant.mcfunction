# Eylem Ekle: Büyü (MAKRO) — {id:"...", enchantment:"minecraft:sharpness", lvl:5, player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"enchant",params:{enchantment:"$(enchantment)",lvl:$(lvl)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Büyü eylemi eklendi: ","color":"green"},{"text":"$(enchantment) $(lvl)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
