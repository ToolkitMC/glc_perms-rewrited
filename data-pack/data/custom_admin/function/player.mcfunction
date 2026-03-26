# Oyuncu Grup Sorgula — çalıştıran oyuncunun bulunduğu grupları gösterir
tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Grup durumunuz:","color":"yellow"}]
execute unless data storage mc:handler data.groups[0] run tellraw @s ["",{"text":"[GULCE] ","color":"gray"},{"text":"Kayıtlı grup yok.","color":"dark_gray"}]
execute if data storage mc:handler data.groups[0] run function custom_admin:player/groups_start
