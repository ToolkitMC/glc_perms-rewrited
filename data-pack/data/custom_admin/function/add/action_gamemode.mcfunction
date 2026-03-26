# Eylem Ekle: Oyun Modu (MAKRO)
# {id:"...", mode:"creative", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"gamemode",params:{mode:"$(mode)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyun modu eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → ","color":"dark_gray"},{"text":"$(mode)","color":"aqua"}]
