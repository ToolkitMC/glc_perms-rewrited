# MAKRO — {id, player}
$data modify storage mc:_ temp.kit_items set from storage mc:handler data.kits[{id:"$(id)"}].items
execute unless data storage mc:_ temp.kit_items[0] run tellraw @s ["",{"text":"[KİT] ","color":"red"},{"text":"Kit boş veya bulunamadı: ","color":"red"},{"text":"$(id)","color":"yellow"}]
execute unless data storage mc:_ temp.kit_items[0] run return 0
$data modify storage mc:_ temp.kit_player set value "$(player)"
function custom_admin:kit/give_loop
$function custom_admin:log/add {player:"$(player)",action:"kit",details:"$(id)"}
$tellraw @s ["",{"text":"[KİT] ","color":"green","bold":true},{"text":"Verildi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(player)","color":"aqua"}]
