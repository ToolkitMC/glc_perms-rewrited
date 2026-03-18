scoreboard objectives add gulce_trigger trigger
scoreboard objectives add gulce_cooldown dummy
scoreboard objectives add gulce_id dummy
scoreboard objectives add gulce_timer dummy
scoreboard objectives add gulce_flags dummy
scoreboard objectives add gulce_sched dummy
scoreboard players set #flag.player gulce_flags 1
scoreboard players set #flag.dialog gulce_flags 1
scoreboard players set #flag.schedule gulce_flags 1
execute unless data storage mc:handler data run data modify storage mc:handler data set value {actions:[],permissions:[],scheduled:[],kits:[],logs:[]}
execute unless data storage mc:_ temp run data modify storage mc:_ temp set value {}
execute unless data storage mc:ui ui run data modify storage mc:ui ui set value {}
function custom_admin:handler/version/check
function custom_admin:handler/dialog/load/main_menu
function custom_admin:handler/dialog/load/permission_manager
function custom_admin:handler/dialog/load/help
function custom_admin:handler/dialog/load/about
scoreboard players enable @a gulce_trigger
tellraw @a ["",{"text":"GLC PERMISSIONS (RE-WRITED) ","color":"gold","bold":true},{"storage":"mc:handler","nbt":"data.meta.version","color":"green","bold":true},{"text":" yüklendi!  ","color":"gray"},{"text":"[GitHub]","color":"light_purple","underlined":true,"click_event":{"action":"open_url","url":"https://github.com/ToolkitMC/glc_perms-rewrited"}}]
execute as @a[tag=gulce_admin] run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Load OK","color":"gray"}]
