# MAKRO — {schedule_id, action_id, delay, remaining, player, repeat}
$execute as $(player) run function custom_admin:execute/action {id:"$(action_id)"}
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"⏰ $(action_id) → $(player)","color":"gray"}]
# Tekrarlayan mı?
execute if score #_rep gulce_sched matches 0 run function custom_admin:schedule/fire_remove with storage mc:_sched current
# Tekrarlayan: delay'i geri yükle
$execute if score #_rep gulce_sched matches 1 run execute store result storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}].remaining int 1 run scoreboard players get #_dtmp gulce_sched
