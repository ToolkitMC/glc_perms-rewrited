# Eylem Ekle: Parçacık (MAKRO)
# {id:"...", particle:"minecraft:flame", x:"0", y:"64", z:"0"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"particle",params:{particle:"$(particle)",x:"$(x)",y:"$(y)",z:"$(z)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Parçacık eylemi eklendi: ","color":"green"},{"text":"$(particle)","color":"yellow"},{"text":" @ ","color":"dark_gray"},{"text":"$(x) $(y) $(z)","color":"aqua"}]
