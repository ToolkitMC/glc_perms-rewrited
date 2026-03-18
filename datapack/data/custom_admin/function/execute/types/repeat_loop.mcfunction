function custom_admin:execute/types/repeat_exec with storage mc:_ temp
scoreboard players remove #rep_times gulce_id 1
execute if score #rep_times gulce_id matches 1.. run function custom_admin:execute/types/repeat_loop
