# Add Action: Give (MACRO)
# {id:"...", item:"minecraft:diamond_sword", count:1, player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"give",params:{item:"$(item)",count:$(count)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Esya eylemi eklendi: ","color":"green"},{"text":"$(item)","color":"yellow"},{"text":" x","color":"gray"},{"text":"$(count)","color":"aqua"}]
$function custom_admin:add/register_perm {id:"$(id)"}
