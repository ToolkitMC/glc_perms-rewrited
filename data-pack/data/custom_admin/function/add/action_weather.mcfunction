# Eylem Ekle: Hava Durumu (MAKRO) — {id:"...", weather:"clear|rain|thunder", duration:6000}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"weather",params:{weather:"$(weather)",duration:$(duration)},player:"@s"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Hava durumu eylemi eklendi: ","color":"green"},{"text":"$(weather)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
