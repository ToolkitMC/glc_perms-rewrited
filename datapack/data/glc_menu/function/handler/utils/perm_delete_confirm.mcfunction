# MACRO — {id}
$function custom_admin:remove/permission {id:"$(id)"}
$tellraw @s ["",{"text":"[GLC] ","color":"light_purple","bold":true},{"text":"🗑️ Silindi: ","color":"red"},{"text":"$(id)","color":"yellow"}]
scoreboard players set @s gulce_menu 2
scoreboard players enable @s gulce_menu
