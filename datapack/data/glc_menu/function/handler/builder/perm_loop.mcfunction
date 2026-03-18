data modify storage mc:dialog temp.cp set from storage mc:dialog temp.plist[0]
function glc_menu:handler/builder/perm_add_btn with storage mc:dialog temp.cp
data remove storage mc:dialog temp.plist[0]
execute if data storage mc:dialog temp.plist[0] run function glc_menu:handler/builder/perm_loop
