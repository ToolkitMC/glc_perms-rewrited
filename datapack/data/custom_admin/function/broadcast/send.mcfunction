# MAKRO — {prefix, message, color}
$tellraw @a ["",{"text":"[$(prefix)] ","color":"$(color)","bold":true},{"text":"$(message)","color":"white"}]
$function custom_admin:log/add {player:"@a",action:"broadcast",details:"$(message)"}
