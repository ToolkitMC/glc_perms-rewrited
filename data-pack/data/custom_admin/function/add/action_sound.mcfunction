# Add Action: Sound (MACRO)
# {id:"...", sound:"entity.player.levelup", volume:"1", pitch:"1", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"sound",params:{sound:"$(sound)",volume:"$(volume)",pitch:"$(pitch)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Ses eylemi eklendi: ","color":"green"},{"text":"$(sound)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
