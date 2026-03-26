tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin listesi:","color":"yellow"}]
execute unless data storage mc:handler data.permissions[0] run tellraw @s ["",{"text":"[GULCE] ","color":"gray"},{"text":"Kayıtlı izin yok.","color":"red"}]
execute if data storage mc:handler data.permissions[0] run function custom_admin:list/permissions_start
