data modify storage mc:_ temp.log_item set from storage mc:_ temp.log_list[0]
function custom_admin:log/display with storage mc:_ temp.log_item
data remove storage mc:_ temp.log_list[0]
execute if data storage mc:_ temp.log_list[0] run function custom_admin:log/list_loop
