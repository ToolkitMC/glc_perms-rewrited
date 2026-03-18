data modify storage mc:_ temp.li set from storage mc:_ temp.list_s[0]
function custom_admin:schedule/display_item with storage mc:_ temp.li
data remove storage mc:_ temp.list_s[0]
execute if data storage mc:_ temp.list_s[0] run function custom_admin:schedule/list_loop
