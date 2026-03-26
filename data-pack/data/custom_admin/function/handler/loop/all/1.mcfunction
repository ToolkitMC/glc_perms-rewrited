# GULCE Admin Power - Tik Döngüsü (1.21.4)
execute unless entity @a run return 0
execute unless data storage mc:handler data{loaded:1b} run return 0

execute as @a[scores={gulce_trigger=1..}] run function custom_admin:run/trigger
scoreboard players remove @a[scores={gulce_cooldown=1..}] gulce_cooldown 1
function custom_admin:handler/timer
scoreboard players enable @a gulce_trigger
