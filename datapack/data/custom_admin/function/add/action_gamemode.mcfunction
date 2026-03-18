# MACRO — {id, mode, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"gamemode",params:{mode:"$(mode)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Gamemode eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
