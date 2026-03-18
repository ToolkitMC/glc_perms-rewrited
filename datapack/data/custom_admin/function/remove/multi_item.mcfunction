# MACRO — {action_id, index, list}
$data remove storage mc:handler data.actions[{id:"$(action_id)"}].params.$(list)[$(index)]
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"[$(index)] silindi: ","color":"red"},{"text":"$(action_id)","color":"yellow"}]
