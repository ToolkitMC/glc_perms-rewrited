# Eylem Ekle: Storage Yaz (MAKRO)
# {id:"...", ns:"mc:custom", path:"data.key", val:"değer", player:"@s"}
# val her zaman string olarak saklanır. Compound için action_nbt_copy kullanın.
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"storage_set",params:{ns:"$(ns)",path:"$(path)",val:"$(val)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Storage yaz eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
