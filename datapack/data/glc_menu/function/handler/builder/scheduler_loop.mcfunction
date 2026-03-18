data modify storage mc:dialog temp.cs set from storage mc:dialog temp.slist[0]
function glc_menu:handler/builder/sched_add_btn with storage mc:dialog temp.cs
data remove storage mc:dialog temp.slist[0]
execute if data storage mc:dialog temp.slist[0] run function glc_menu:handler/builder/scheduler_loop
