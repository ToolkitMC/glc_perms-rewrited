# Eylem Parametrelerini Düzenle (MAKRO) — {id:"...", params:{...}}
$data modify storage mc:handler data.actions[{id:"$(id)"}].params set value $(params)
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem parametreleri güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
