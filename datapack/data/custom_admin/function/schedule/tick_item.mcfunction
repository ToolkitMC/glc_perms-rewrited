# MAKRO — {schedule_id, action_id, delay, remaining, player, repeat}
# remaining'i scoreboard'a al ve 1 azalt
$scoreboard players set #_r gulce_sched $(remaining)
scoreboard players remove #_r gulce_sched 1
$execute store result storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}].remaining int 1 run scoreboard players get #_r gulce_sched
# repeat ve delay'i de al (fire_item için gerekli)
$scoreboard players set #_rep gulce_sched $(repeat)
$scoreboard players set #_dtmp gulce_sched $(delay)
# Tetikle mi?
execute if score #_r gulce_sched matches ..0 run function custom_admin:schedule/fire_item with storage mc:_sched current
