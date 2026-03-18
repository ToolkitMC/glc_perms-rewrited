# MAKRO — {action_id, delay, player, repeat}
scoreboard players add #schedule_id gulce_id 1
$data modify storage mc:handler data.scheduled append value {schedule_id:0,action_id:"$(action_id)",delay:0,remaining:0,player:"$(player)",repeat:0b}
execute store result storage mc:handler data.scheduled[-1].schedule_id int 1 run scoreboard players get #schedule_id gulce_id
$scoreboard players set #_dtmp gulce_sched $(delay)
execute store result storage mc:handler data.scheduled[-1].delay int 1 run scoreboard players get #_dtmp gulce_sched
execute store result storage mc:handler data.scheduled[-1].remaining int 1 run scoreboard players get #_dtmp gulce_sched
$scoreboard players set #_rep gulce_sched $(repeat)
execute store result storage mc:handler data.scheduled[-1].repeat byte 1 run scoreboard players get #_rep gulce_sched
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Zamanlandı: ","color":"green"},{"text":"$(action_id)","color":"yellow"}]
