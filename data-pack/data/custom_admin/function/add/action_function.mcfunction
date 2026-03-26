# Eylem Ekle: Fonksiyon Çağır (MAKRO)
# {id:"...", function:"namespace:path/to/func", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"function",params:{function:"$(function)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Fonksiyon eylemi eklendi: ","color":"green"},{"text":"$(function)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
