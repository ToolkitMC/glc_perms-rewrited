$execute as $(player) run attribute @s $(attr_name) base set $(attr_value)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Özellik ayarlandı: ","color":"green"},{"text":"$(attr_name) = $(attr_value)","color":"yellow"}]
