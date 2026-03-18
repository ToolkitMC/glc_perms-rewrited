execute store result score #cl gulce_id run data get storage mc:handler data.scheduled
data modify storage mc:handler data.scheduled set value []
data modify storage mc:_sched work set value []
data modify storage mc:_sched current set value {}
tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Zamanlamalar temizlendi: ","color":"green"},{"score":{"name":"#cl","objective":"gulce_id"},"color":"yellow"}]
