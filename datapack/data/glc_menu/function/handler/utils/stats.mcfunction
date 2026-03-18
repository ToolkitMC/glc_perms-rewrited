execute store result score #tp gulce_id run data get storage mc:handler data.permissions
execute store result score #ta gulce_id run data get storage mc:handler data.actions
execute store result score #ts gulce_id run data get storage mc:handler data.scheduled
tellraw @s ["",{"text":"=== Sistem ===","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"İzin: ","color":"gray"},{"score":{"name":"#tp","objective":"gulce_id"},"color":"aqua"}]
tellraw @s ["",{"text":"Eylem: ","color":"gray"},{"score":{"name":"#ta","objective":"gulce_id"},"color":"green"}]
tellraw @s ["",{"text":"Zamanlama: ","color":"gray"},{"score":{"name":"#ts","objective":"gulce_id"},"color":"yellow"}]
tellraw @s ["",{"text":"=== Flags ===","color":"light_purple","bold":true}]
tellraw @s ["",{"text":"player: ","color":"gray"},{"score":{"name":"#flag.player","objective":"gulce_flags"},"color":"aqua"}]
tellraw @s ["",{"text":"dialog: ","color":"gray"},{"score":{"name":"#flag.dialog","objective":"gulce_flags"},"color":"aqua"}]
tellraw @s ["",{"text":"schedule: ","color":"gray"},{"score":{"name":"#flag.schedule","objective":"gulce_flags"},"color":"aqua"}]
