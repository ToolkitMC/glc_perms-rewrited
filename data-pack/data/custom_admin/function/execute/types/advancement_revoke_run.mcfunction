$execute as $(player) run advancement revoke @s only $(adv_id)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"dark_red","bold":true},{"text":"Başarım geri alındı: ","color":"red"},{"text":"$(adv_id)","color":"yellow"}]
