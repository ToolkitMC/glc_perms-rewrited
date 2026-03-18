# MACRO — {action_id, item, list}
# list = commands | functions | actions
$data modify storage mc:handler data.actions[{id:"$(action_id)"}].params.$(list) append value "$(item)"
$execute store result score #cnt gulce_id run data get storage mc:handler data.actions[{id:"$(action_id)"}].params.$(list)
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eklendi → ","color":"green"},{"text":"$(action_id)","color":"yellow"},{"text":".$(list)","color":"gray"},{"text":" [","color":"gray"},{"score":{"name":"#cnt","objective":"gulce_id"},"color":"aqua"},{"text":" item]","color":"gray"}]
