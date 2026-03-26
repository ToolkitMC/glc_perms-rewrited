# Eylem Ekle: Duyuru (MAKRO) — {id:"...", text:"Sunucu duyurusu", color:"gold"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"broadcast",params:{text:"$(text)",color:"$(color)"},player:"@a"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Duyuru eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
