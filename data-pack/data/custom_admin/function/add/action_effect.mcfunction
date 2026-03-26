# Add Action: Effect (MACRO)
# {id:"...", effect:"speed", duration:100, amplifier:1, player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"effect",params:{effect:"$(effect)",duration:$(duration),amplifier:$(amplifier)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Efekt eylemi eklendi: ","color":"green"},{"text":"$(effect)","color":"yellow"}]
