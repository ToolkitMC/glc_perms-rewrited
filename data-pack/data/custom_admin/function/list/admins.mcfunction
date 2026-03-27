# Admin Listesi
tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Admin listesi:","color":"yellow"}]
execute unless entity @a[tag=gulce_admin] run tellraw @s ["",{"text":"  (kayıtlı admin yok)","color":"dark_gray"}]
execute as @a[tag=gulce_admin] run tellraw @s ["",{"text":"  ★ ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" [Kaldır]","color":"red","clickEvent":{"action":"suggest_command","value":"/function custom_admin:remove/player {name:\"OYUNCU\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Admin yetkisini kaldır"}}}]
