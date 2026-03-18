# MAKRO — {cond_target, cond_obj, cond_then}
$execute store result score #cond_val gulce_id run scoreboard players get $(cond_target) $(cond_obj)
execute if score #cond_val gulce_id >= #cond_min gulce_id run execute if score #cond_val gulce_id <= #cond_max gulce_id run function custom_admin:execute/types/conditional_fire with storage mc:_ temp
