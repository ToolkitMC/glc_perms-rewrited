scoreboard objectives add gulce_menu trigger
scoreboard objectives add gulce_load.dialog dummy
scoreboard objectives add gulce_flags dummy
scoreboard objectives add gulce_sched dummy
execute unless data storage mc:dialog ui run data modify storage mc:dialog ui set value {}
execute unless data storage mc:dialog temp run data modify storage mc:dialog temp set value {}
execute unless data storage mc:_sched work run data modify storage mc:_sched work set value []
execute unless data storage mc:_sched current run data modify storage mc:_sched current set value {}
tag @a remove glc.show_pending
tag @a remove closed.glc
scoreboard players set @a gulce_load.dialog -1
scoreboard players set #flag.dialog gulce_flags 1
scoreboard players enable @a gulce_menu
tellraw @a[tag=gulce_admin] ["",{"text":"[GLC] Menu sistemi yüklendi","color":"light_purple","bold":true}]
