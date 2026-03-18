scoreboard players enable @s gulce_trigger

# Cooldown kontrolü
execute if score @s gulce_cooldown matches 1.. run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Cooldown: ","color":"red"},{"score":{"name":"@s","objective":"gulce_cooldown"},"color":"yellow"},{"text":" tick","color":"red"}]
execute if score @s gulce_cooldown matches 1.. run scoreboard players set @s gulce_trigger 0
execute if score @s gulce_cooldown matches 1.. run return 0

# Doğru dialog compound'u temp'e kopyala
execute if score @s gulce_trigger matches 1 run data modify storage mc:_ temp.dialog_data set from storage mc:ui ui.main
execute if score @s gulce_trigger matches 2 run data modify storage mc:_ temp.dialog_data set from storage mc:ui ui.permissions
execute if score @s gulce_trigger matches 3 run data modify storage mc:_ temp.dialog_data set from storage mc:ui ui.help
execute if score @s gulce_trigger matches 4 run data modify storage mc:_ temp.dialog_data set from storage mc:ui ui.about

# Macro ile compound expand → dialog show @s {type:...}
execute if score @s gulce_trigger matches 1.. run function custom_admin:handler/dialog/show_dialog with storage mc:_ temp

scoreboard players set @s gulce_cooldown 30
scoreboard players set @s gulce_trigger 0
tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Trigger: ","color":"gray"},{"selector":"@s","color":"yellow"}]
