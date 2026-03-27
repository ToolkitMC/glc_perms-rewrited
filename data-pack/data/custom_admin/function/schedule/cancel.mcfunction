# Zamanlamayı İptal Et (MAKRO) — {schedule_id:N}
# schedule_id numarasına göre zamanlanmış eylemi listeden kaldırır.
$data remove storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}]
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Zamanlama iptal edildi: #","color":"red"},{"text":"$(schedule_id)","color":"yellow"}]
