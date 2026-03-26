# Add Action: Command (MACRO)
# {id:"...", command:"say Merhaba", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"command",params:{command:"$(command)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Komut eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
