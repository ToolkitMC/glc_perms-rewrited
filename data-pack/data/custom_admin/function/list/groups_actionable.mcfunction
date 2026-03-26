tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Grup listesi (Aksiyonlar):","color":"light_purple"}]
execute unless data storage mc:handler data.groups[0] run tellraw @s ["",{"text":"[GULCE] ","color":"gray"},{"text":"Kayıtlı grup yok.","color":"red"}]
execute if data storage mc:handler data.groups[0] run function custom_admin:list/groups_actionable_start
