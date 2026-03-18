# MAKRO — {player, action, details}
$data modify storage mc:handler data.logs append value {player:"$(player)",action:"$(action)",details:"$(details)",tick:0}
execute store result storage mc:handler data.logs[-1].tick int 1 run scoreboard players get #global_timer gulce_timer
