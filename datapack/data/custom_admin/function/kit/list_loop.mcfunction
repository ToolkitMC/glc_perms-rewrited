data modify storage mc:_ temp.kit_info set from storage mc:_ temp.kit_list[0]
function custom_admin:kit/list_display with storage mc:_ temp.kit_info
data remove storage mc:_ temp.kit_list[0]
execute if data storage mc:_ temp.kit_list[0] run function custom_admin:kit/list_loop
