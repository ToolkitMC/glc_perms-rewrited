# Pool'dan rastgele seç
execute store result score #pool_size gulce_id run data get storage mc:_ temp.params.pool
execute if score #pool_size gulce_id matches 0 run return 0
execute store result score #rand_pick gulce_id run data get storage mc:_ temp.params.pool
# Rastgelelik için global_timer mod pool_size
execute store result score #timer_val gulce_timer run scoreboard players get #global_timer gulce_timer
scoreboard players operation #timer_val gulce_timer %= #pool_size gulce_id
# temp.ri'ye index yaz
execute store result storage mc:_ temp.ri int 1 run scoreboard players get #timer_val gulce_timer
function custom_admin:execute/types/random_pick with storage mc:_ temp
