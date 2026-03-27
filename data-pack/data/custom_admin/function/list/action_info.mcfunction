# Eylem Detayı (MAKRO) — {id:"eylem_id"}
$data modify storage mc:_ temp.info_action set from storage mc:handler data.actions[{id:"$(id)"}]
$execute unless data storage mc:_ temp.info_action run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Eylem bulunamadı: ","color":"red"},{"text":"$(id)","color":"yellow"}]
execute unless data storage mc:_ temp.info_action run return 0
function custom_admin:list/action_info_print with storage mc:_ temp.info_action
data remove storage mc:_ temp.info_action
