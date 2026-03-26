# Eylem Ekle: Storage Sil (MAKRO)
# {id:"...", ns:"mc:custom", path:"data.key", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"storage_remove",params:{ns:"$(ns)",path:"$(path)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Storage sil eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
