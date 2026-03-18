# MACRO — {id, particle, x, y, z, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"particle",params:{particle:"$(particle)",x:"$(x)",y:"$(y)",z:"$(z)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Parçacık eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
