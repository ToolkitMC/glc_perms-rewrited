# Listeyi işlemek için kopyala (mc:_sched — hiç kimse dokunmaz)
data modify storage mc:_sched work set from storage mc:handler data.scheduled
execute if data storage mc:_sched work[0] run function custom_admin:schedule/process_one
