# Dondurulmuş Oyuncuları Listele
tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Dondurulmuş oyuncular:","color":"dark_aqua"}]
execute unless entity @a[tag=gulce.freeze] run tellraw @s ["",{"text":"  (yok)","color":"dark_gray"}]
execute as @a[tag=gulce.freeze] run tellraw @s ["",{"text":"  ❄ ","color":"dark_aqua"},{"selector":"@s","color":"aqua"},{"text":" [Çöz]","color":"green","clickEvent":{"action":"suggest_command","value":"/function custom_admin:add/action_unfreeze {id:\"ufrz_tmp\",player:\"OYUNCU\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Bu oyuncuyu çöz"}}}]
