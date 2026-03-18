# MAKRO — {log_player, log_action}
$data modify storage mc:handler data.logs append value {player:"$(log_player)",action:"$(log_action)",details:"execute/action",tick:0}
execute store result storage mc:handler data.logs[-1].tick int 1 run scoreboard players get #global_timer gulce_timer
