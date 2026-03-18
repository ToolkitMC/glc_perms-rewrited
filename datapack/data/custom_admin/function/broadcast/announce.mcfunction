# MAKRO — {message}
tellraw @a ["",{"text":"══════════════════","color":"gold","bold":true}]
$tellraw @a ["",{"text":"  📢 ","color":"gold"},{"text":"$(message)","color":"yellow","bold":true}]
tellraw @a ["",{"text":"══════════════════","color":"gold","bold":true}]
$function custom_admin:log/add {player:"@a",action:"announce",details:"$(message)"}
