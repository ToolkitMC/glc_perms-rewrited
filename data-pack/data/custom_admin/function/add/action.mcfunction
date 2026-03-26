# Eylem Ekle — ham parametre ile (MAKRO)
# {id:"...", type:"message", value:{text:"..."}, player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"$(type)",params:$(value),player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem eklendi: ","color":"green"},{"text":"$(type)","color":"yellow"},{"text":" (","color":"dark_gray"},{"text":"$(id)","color":"yellow"},{"text":")","color":"dark_gray"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem eklendi: ","color":"gray"},{"text":"$(type)","color":"yellow"},{"text":" — ","color":"dark_gray"},{"selector":"@s","color":"aqua"}]
