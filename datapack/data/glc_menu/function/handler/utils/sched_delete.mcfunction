# MAKRO — {schedule_id}
$data remove storage mc:handler data.scheduled[{schedule_id:$(schedule_id)}]
$tellraw @s ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"Zamanlama silindi: #","color":"red"},{"text":"$(schedule_id)","color":"yellow"}]
scoreboard players set @s gulce_menu 61
scoreboard players enable @s gulce_menu
