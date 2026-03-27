$execute as $(player) run advancement grant @s only $(adv_id)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Başarım verildi: ","color":"green"},{"text":"$(adv_id)","color":"yellow"}]
