# Eylem Ekle: Varlık Çağır (MAKRO)
# {id:"...", entity:"minecraft:zombie", x:"0", y:"64", z:"0"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"summon",params:{entity:"$(entity)",x:"$(x)",y:"$(y)",z:"$(z)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Çağırma eylemi eklendi: ","color":"green"},{"text":"$(entity)","color":"yellow"},{"text":" @ ","color":"dark_gray"},{"text":"$(x) $(y) $(z)","color":"aqua"}]
$function custom_admin:add/register_perm {id:"$(id)"}
