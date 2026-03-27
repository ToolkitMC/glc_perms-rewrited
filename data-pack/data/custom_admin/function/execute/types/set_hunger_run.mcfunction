$execute as $(player) run attribute @s minecraft:player.max_absorption base set 0
$execute as $(player) run hunger set @s $(level)
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Açlık barı ayarlandı: ","color":"green"},{"text":"$(level)/20","color":"yellow"}]
