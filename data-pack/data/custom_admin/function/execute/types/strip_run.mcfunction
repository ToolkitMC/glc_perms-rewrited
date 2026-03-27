$execute as $(player) run item modify entity @s weapon.mainhand custom_admin:strip_enchants
$execute as $(player) run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Elinizdeki eşyanın büyüleri silindi.","color":"green"}]
