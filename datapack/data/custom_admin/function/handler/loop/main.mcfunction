execute if score #flag.schedule gulce_flags matches 1 run execute if data storage mc:handler data.scheduled[0] run function custom_admin:schedule/tick
execute if data storage mc:_ temp.events[0] run data remove storage mc:_ temp.events[0]
function custom_admin:player/ban_check
