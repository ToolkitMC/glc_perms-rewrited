tellraw @s ["",{"text":"═ ⏰ Zamanlamalar ═","color":"aqua","bold":true}]
execute store result score #sc gulce_id run data get storage mc:handler data.scheduled
execute if score #sc gulce_id matches 0 run tellraw @s ["",{"text":" ❌ Boş","color":"red"}]
execute if score #sc gulce_id matches 0 run return 0
data modify storage mc:_ temp.list_s set from storage mc:handler data.scheduled
function custom_admin:schedule/list_loop
tellraw @s ["",{"text":"Toplam: ","color":"gray"},{"score":{"name":"#sc","objective":"gulce_id"},"color":"yellow"}]
