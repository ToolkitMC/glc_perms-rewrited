# MAKRO — {schedule_id}
$data modify storage mc:_sched current set from storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}]
function custom_admin:schedule/fire_item with storage mc:_sched current
$tellraw @s ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"▶️ Çalıştırıldı: #","color":"green"},{"text":"$(schedule_id)","color":"yellow"}]
scoreboard players set @s gulce_menu 61
scoreboard players enable @s gulce_menu
