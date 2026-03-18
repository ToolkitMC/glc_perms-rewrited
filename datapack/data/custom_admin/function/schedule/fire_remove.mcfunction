# MAKRO — {schedule_id}
$data remove storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"🗑️ Zamanlama tamamlandı: #$(schedule_id)","color":"gray"}]
