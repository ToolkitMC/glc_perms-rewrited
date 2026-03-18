# MACRO — {id, type, player}
$data modify storage mc:handler data.actions[{id:"$(id)"}].type set value "$(type)"
$data modify storage mc:handler data.actions[{id:"$(id)"}].player set value "$(player)"
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
