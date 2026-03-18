execute store result score #kc gulce_id run data get storage mc:handler data.kits
execute if score #kc gulce_id matches 0 run tellraw @s ["",{"text":"[KİT] ","color":"green","bold":true},{"text":"Henüz kit yok.","color":"red"}]
execute if score #kc gulce_id matches 0 run return 0
tellraw @s ["",{"text":"══ Kitler ══","color":"green","bold":true},{"text":" (","color":"gray"},{"score":{"name":"#kc","objective":"gulce_id"},"color":"yellow"},{"text":" kit)","color":"gray"}]
data modify storage mc:_ temp.kit_list set from storage mc:handler data.kits
function custom_admin:kit/list_loop
