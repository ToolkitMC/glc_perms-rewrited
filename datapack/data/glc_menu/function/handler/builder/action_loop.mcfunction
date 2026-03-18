data modify storage mc:dialog temp.ca set from storage mc:dialog temp.alist[0]
function glc_menu:handler/builder/action_add_btn with storage mc:dialog temp.ca
data remove storage mc:dialog temp.alist[0]
execute if data storage mc:dialog temp.alist[0] run function glc_menu:handler/builder/action_loop
