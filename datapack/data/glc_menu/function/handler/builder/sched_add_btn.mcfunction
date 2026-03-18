# MACRO — {schedule_id, action_id, delay, remaining, player, repeat}
$execute store result score #rp gulce_id run data get storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}].repeat
execute if score #rp gulce_id matches 1 run data modify storage mc:dialog temp.cs.repeat_icon set value "🔄"
execute unless score #rp gulce_id matches 1 run data modify storage mc:dialog temp.cs.repeat_icon set value "⏱️"
execute if score #rp gulce_id matches 1 run data modify storage mc:dialog temp.cs.repeat_text set value "§aEvet"
execute unless score #rp gulce_id matches 1 run data modify storage mc:dialog temp.cs.repeat_text set value "§cHayır"
function glc_menu:handler/builder/sched_create_btn with storage mc:dialog temp.cs
