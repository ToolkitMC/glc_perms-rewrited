# MAKRO — {id, effect, duration, amplifier, player}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"effect",params:{effect:"$(effect)",duration:0,amplifier:0},player:"$(player)"}
$scoreboard players set #_dur_tmp gulce_id $(duration)
$scoreboard players set #_amp_tmp gulce_id $(amplifier)
execute store result storage mc:handler data.actions[-1].params.duration int 1 run scoreboard players get #_dur_tmp gulce_id
execute store result storage mc:handler data.actions[-1].params.amplifier int 1 run scoreboard players get #_amp_tmp gulce_id
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Efekt eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
