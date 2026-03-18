# MAKRO — {id, name, items}
$execute store result score #ki gulce_id run data get storage mc:handler data.kits[{id:"$(id)"}].items
$tellraw @s ["",{"text":" ◆ ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" — ","color":"dark_gray"},{"text":"$(name)","color":"white"},{"text":" (","color":"dark_gray"},{"score":{"name":"#ki","objective":"gulce_id"},"color":"aqua"},{"text":" item)","color":"dark_gray"}]
