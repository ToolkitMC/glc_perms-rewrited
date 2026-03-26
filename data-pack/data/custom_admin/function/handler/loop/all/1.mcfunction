# GULCE Admin Power - Tik Döngüsü (1.21.4)
execute unless entity @a run return 0
execute unless data storage mc:handler data{loaded:1b} run return 0

execute as @a[scores={gulce_trigger=1..}] run function custom_admin:run/trigger
scoreboard players remove @a[scores={gulce_cooldown=1..}] gulce_cooldown 1
function custom_admin:handler/timer
scoreboard players enable @a gulce_trigger
execute as @a[tag=gulce.freeze,gamemode=!spectator] run tp @s[type=minecraft:player] @s[type=minecraft:player]
execute as @a[scores={gulce_rc=1..}] at @s if items entity @s weapon.mainhand minecraft:carrot_on_a_stick[minecraft:custom_data={gulceMenu:1b}] run function custom_admin:menu/main
scoreboard players set @a[scores={gulce_rc=1..}] gulce_rc 0
execute if data storage mc:handler data.scheduled[0] run function custom_admin:schedule/tick