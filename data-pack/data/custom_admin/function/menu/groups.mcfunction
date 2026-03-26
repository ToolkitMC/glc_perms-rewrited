tellraw @s ["",{"text":"====================","color":"light_purple","bold":true}]
tellraw @s ["",{"text":" Grup Yönetimi","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"====================","color":"light_purple","bold":true}]
tellraw @s ["",{"text":" "},{"text":"[+ Grup Oluştur]","color":"green","bold":true,"clickEvent":{"action":"suggest_command","value":"/function custom_admin:group/create {id:\"grup_id\",name:\"Grup Adı\",level:1}"},"hoverEvent":{"action":"show_text","contents":{"text":"Yeni grup oluştur"}}}]
tellraw @s ["",{"text":"====================","color":"light_purple","bold":true}]
tellraw @s ""
execute unless data storage mc:handler data.groups[0] run tellraw @s ["",{"text":"[GULCE] ","color":"gray"},{"text":"Kayıtlı grup yok.","color":"red"}]
execute if data storage mc:handler data.groups[0] run function custom_admin:list/groups_actionable
tellraw @s ""
tellraw @s ["",{"text":" "},{"text":"[< Geri]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger gulce_trigger set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Ana menüye dön"}}}]
tellraw @s ["",{"text":"====================","color":"light_purple","bold":true}]
