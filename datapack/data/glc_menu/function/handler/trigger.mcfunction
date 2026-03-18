execute if score @s gulce_menu matches 1 run function glc_menu:handler/builder/main
execute if score @s gulce_menu matches 2 run function glc_menu:handler/builder/permissions
execute if score @s gulce_menu matches 3 run function glc_menu:handler/builder/bulk_ops
execute if score @s gulce_menu matches 4 run function glc_menu:handler/builder/actions
execute if score @s gulce_menu matches 6 run function glc_menu:handler/builder/scheduler
execute if score @s gulce_menu matches 61 run function glc_menu:handler/builder/scheduler_list

execute if score @s gulce_menu.cl matches 1 run function glc_menu:handler/close

scoreboard players set @s gulce_menu.cl 0
scoreboard players set @s gulce_menu 0
scoreboard players enable @s gulce_menu
scoreboard players enable @s gulce_menu.cl
