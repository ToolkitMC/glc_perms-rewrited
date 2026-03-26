# Eylem Tipi Değiştir (MAKRO) — {id:"...", type:"message"}
$data modify storage mc:handler data.actions[{id:"$(id)"}].type set value "$(type)"
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem tipi değiştirildi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(type)","color":"aqua"}]
