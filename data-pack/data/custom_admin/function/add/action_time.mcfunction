# Eylem Ekle: Zaman (MAKRO) — {id:"...", time:"day|night|noon|midnight|sunrise|sunset"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"time",params:{time:"$(time)"},player:"@s"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Zaman eylemi eklendi: ","color":"green"},{"text":"$(time)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
