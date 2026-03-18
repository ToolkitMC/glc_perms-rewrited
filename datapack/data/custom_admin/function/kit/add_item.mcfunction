# MAKRO — {kit_id, item, count}
$data modify storage mc:handler data.kits[{id:"$(kit_id)"}].items append value {item:"$(item)",count:1}
$scoreboard players set #_cnt_tmp gulce_id $(count)
execute store result storage mc:handler data.kits[{id:"$(kit_id)"}].items[-1].count int 1 run scoreboard players get #_cnt_tmp gulce_id
$execute store result score #ks gulce_id run data get storage mc:handler data.kits[{id:"$(kit_id)"}].items
$tellraw @s ["",{"text":"[KİT] ","color":"green","bold":true},{"text":"$(item)","color":"yellow"},{"text":" x$(count)","color":"white"},{"text":" → kit ","color":"gray"},{"text":"$(kit_id)","color":"aqua"},{"text":" (","color":"dark_gray"},{"score":{"name":"#ks","objective":"gulce_id"},"color":"white"},{"text":" item)","color":"dark_gray"}]
