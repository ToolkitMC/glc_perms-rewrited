data modify storage mc:_ temp.rep_id set from storage mc:_ temp.params.target_id
execute store result score #rep_times gulce_id run data get storage mc:_ temp.params.times
execute store result storage mc:_ temp.rep_left int 1 run scoreboard players get #rep_times gulce_id
execute if score #rep_times gulce_id matches 1.. run function custom_admin:execute/types/repeat_loop
