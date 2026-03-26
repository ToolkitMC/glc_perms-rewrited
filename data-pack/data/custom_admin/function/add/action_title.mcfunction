# Eylem Ekle: Başlık (MAKRO)
# {id:"...", text:"Ana Başlık", subtitle:"Alt Başlık", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"title",params:{text:"$(text)",subtitle:"$(subtitle)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Başlık eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" | ","color":"dark_gray"},{"text":"$(text)","color":"white"}]
$function custom_admin:add/register_perm {id:"$(id)"}
