# MAKRO — {kit_id, index}
$data remove storage mc:handler data.kits[{id:"$(kit_id)"}].items[$(index)]
$tellraw @s ["",{"text":"[KİT] ","color":"green","bold":true},{"text":"[$(index)] silindi → ","color":"red"},{"text":"$(kit_id)","color":"yellow"}]
