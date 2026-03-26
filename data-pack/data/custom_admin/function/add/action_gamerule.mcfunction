# Eylem Ekle: Oyun Kuralı (MAKRO) — {id:"...", rule:"keepInventory", value:"true"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"gamerule",params:{rule:"$(rule)",value:"$(value)"},player:"@s"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyun kuralı eylemi eklendi: ","color":"green"},{"text":"$(rule)","color":"yellow"},{"text":" = ","color":"gray"},{"text":"$(value)","color":"aqua"}]
$function custom_admin:add/register_perm {id:"$(id)"}
