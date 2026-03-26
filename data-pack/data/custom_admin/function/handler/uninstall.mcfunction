# GULCE Admin Power - Kaldırma İşleyicisi
# Çağrı: /function custom_admin:handler/uninstall

execute unless data storage mc:handler data{loaded:1b} run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Zaten kurulu değil.","color":"red"}]
execute unless data storage mc:handler data{loaded:1b} run return 0

# Sabit scoreboard objective'lerini kaldır
scoreboard objectives remove gulce_trigger
scoreboard objectives remove gulce_cooldown
scoreboard objectives remove gulce_timer
scoreboard objectives remove gulce_group
scoreboard objectives remove gulce_perm
scoreboard objectives remove gulce_rc

# Dinamik gulce_can_* objective'lerini kaldır
function custom_admin:handler/uninstall/remove_perm_objectives

# Storage temizle
data remove storage mc:handler data
data remove storage mc:_ temp

# Admin tag'ini kaldır
tag @a remove gulce_admin

# Bildirim (storage temizlendikten sonra loaded kontrol edilemez, doğrudan mesaj)
tellraw @a ["",{"text":"[GULCE] ","color":"dark_red","bold":true},{"text":"Admin Power kaldırıldı.","color":"red"},{"text":" Tüm veri ve yetkiler temizlendi.","color":"dark_gray"}]
