data modify storage mc:_ temp.cond_target set from storage mc:_ temp.params.score_target
data modify storage mc:_ temp.cond_obj set from storage mc:_ temp.params.objective
data modify storage mc:_ temp.cond_then set from storage mc:_ temp.params.then_id
execute store result score #cond_min gulce_id run data get storage mc:_ temp.params.min
execute store result score #cond_max gulce_id run data get storage mc:_ temp.params.max
function custom_admin:execute/types/conditional_check with storage mc:_ temp
