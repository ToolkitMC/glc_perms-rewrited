# Eylem Sil (MAKRO)
$data remove storage mc:handler data.actions[{id:"$(id)"}]
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem silindi: ","color":"red"},{"text":"$(id)","color":"yellow"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem silindi: ","color":"gray"},{"text":"$(id)","color":"yellow"}]
