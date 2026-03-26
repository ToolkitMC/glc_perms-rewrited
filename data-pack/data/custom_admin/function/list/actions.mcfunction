tellraw @s ["",{"text":"====================","color":"aqua","bold":true}]
tellraw @s ["",{"text":" Eylem Listesi","color":"aqua","bold":true}]
tellraw @s ["",{"text":"====================","color":"aqua","bold":true}]
tellraw @s ["",{"text":" ID","color":"yellow","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Tip","color":"aqua","bold":true},{"text":" | ","color":"dark_gray"},{"text":"Hedef","color":"green","bold":true}]
execute unless data storage mc:handler data.actions[0] run tellraw @s ["",{"text":"[GULCE] ","color":"gray"},{"text":"Kayıtlı eylem yok.","color":"red"}]
execute if data storage mc:handler data.actions[0] run function custom_admin:list/actions_start
tellraw @s ["",{"text":"====================","color":"aqua","bold":true}]
