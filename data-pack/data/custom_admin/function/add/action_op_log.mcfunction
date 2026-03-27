# Eylem Ekle: Admin Log (MAKRO) — {id:"...", text:"Log mesajı", color:"red"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"op_log",params:{text:"$(text)",color:"$(color)"},player:"@a"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Admin log eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
