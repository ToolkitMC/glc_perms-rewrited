execute if score #flag.dialog gulce_flags matches 1 run execute as @a[scores={gulce_menu=1..}] run function glc_menu:handler/trigger
execute if score #flag.dialog gulce_flags matches 1 run execute as @a[scores={gulce_menu.cl=1..}] run function glc_menu:handler/trigger
scoreboard players remove @a[scores={gulce_load.dialog=1..}] gulce_load.dialog 1
execute if score #flag.dialog gulce_flags matches 1 run execute as @a[scores={gulce_load.dialog=0},tag=glc.show_pending] run function glc_menu:handler/dialog/show
execute if score #flag.dialog gulce_flags matches 0 run tag @a[tag=glc.show_pending] remove glc.show_pending
execute if score #flag.dialog gulce_flags matches 0 run scoreboard players set @a[scores={gulce_load.dialog=0}] gulce_load.dialog -1