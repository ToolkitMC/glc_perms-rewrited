# Eylem Ekle: NBT Kopyala (MAKRO)
# {id:"...", from_ns:"mc:handler", from_path:"data.x", to_ns:"mc:custom", to_path:"result", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"nbt_copy",params:{from_ns:"$(from_ns)",from_path:"$(from_path)",to_ns:"$(to_ns)",to_path:"$(to_path)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"NBT kopyala eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" (","color":"dark_gray"},{"text":"$(from_ns):$(from_path)","color":"aqua"},{"text":" → ","color":"dark_gray"},{"text":"$(to_ns):$(to_path)","color":"aqua"},{"text":")","color":"dark_gray"}]
$function custom_admin:add/register_perm {id:"$(id)"}
