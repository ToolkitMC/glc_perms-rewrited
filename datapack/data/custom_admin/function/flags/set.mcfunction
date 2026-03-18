# MACRO — {flag, value}  flag: player|dialog|schedule  value: 0|1
$scoreboard players set #flag.$(flag) gulce_flags $(value)
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Flag ","color":"gray"},{"text":"$(flag)","color":"yellow"},{"text":" = ","color":"gray"},{"text":"$(value)","color":"aqua"}]
