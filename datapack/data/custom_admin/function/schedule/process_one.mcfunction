# Array-shift: ilk elemanı al, işle, sil, devam et
data modify storage mc:_sched current set from storage mc:_sched work[0]
data remove storage mc:_sched work[0]
function custom_admin:schedule/tick_item with storage mc:_sched current
execute if data storage mc:_sched work[0] run function custom_admin:schedule/process_one
