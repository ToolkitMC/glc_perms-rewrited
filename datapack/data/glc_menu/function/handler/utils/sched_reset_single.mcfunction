# MACRO — {schedule_id}
$data modify storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}].remaining set from storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}].delay
