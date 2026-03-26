# Tetikleyici İşleyici (1.21.4)
scoreboard players enable @s gulce_trigger

execute if score @s gulce_cooldown matches 1.. run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Lütfen bekleyin! Kalan süre: ","color":"red"},{"score":{"name":"@s","objective":"gulce_cooldown"},"color":"yellow"},{"text":" tik","color":"red"}]
execute if score @s gulce_cooldown matches 1.. run scoreboard players set @s gulce_trigger 0
execute if score @s gulce_cooldown matches 1.. run return 0

execute if score @s gulce_trigger matches 1 run function custom_admin:menu/main
execute if score @s gulce_trigger matches 2 run function custom_admin:menu/permissions
execute if score @s gulce_trigger matches 3 run function custom_admin:menu/help
execute if score @s gulce_trigger matches 4 run function custom_admin:menu/about
execute if score @s gulce_trigger matches 5 run function custom_admin:menu/groups
execute if score @s gulce_trigger matches 6 run function custom_admin:menu/actions

scoreboard players set @s gulce_cooldown 30
scoreboard players set @s gulce_trigger 0
