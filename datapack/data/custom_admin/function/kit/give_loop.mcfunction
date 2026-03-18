data modify storage mc:_ temp.kit_slot set from storage mc:_ temp.kit_items[0]
data remove storage mc:_ temp.kit_items[0]
# Noktalı makrodan kaçın — item ve count'u düz alana çıkar
data modify storage mc:_ temp.kit_item set from storage mc:_ temp.kit_slot.item
data modify storage mc:_ temp.kit_count set from storage mc:_ temp.kit_slot.count
function custom_admin:kit/give_one with storage mc:_ temp
execute if data storage mc:_ temp.kit_items[0] run function custom_admin:kit/give_loop
