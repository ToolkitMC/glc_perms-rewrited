$execute as $(player) at @s run spreadplayers ~ ~ 0 $(range) false @s
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Rastgele konuma ışınlandınız! (Yarıçap: ","color":"green"},{"text":"$(range)","color":"yellow"},{"text":")","color":"green"}]
