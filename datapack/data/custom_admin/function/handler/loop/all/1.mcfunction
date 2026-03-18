execute if score #flag.player gulce_flags matches 1 run execute as @a[scores={gulce_trigger=1..}] run function custom_admin:run/trigger
function custom_admin:handler/loop/main
function custom_admin:handler/loop/permissions
function custom_admin:handler/timer
execute if score #flag.player gulce_flags matches 1 run scoreboard players remove @a[scores={gulce_cooldown=1..}] gulce_cooldown 1
