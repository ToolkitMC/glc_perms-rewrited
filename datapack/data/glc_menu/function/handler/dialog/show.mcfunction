# Çağrıldığında @s zaten doğru oyuncu, closed.glc yoksa göster
execute as @s[tag=!closed.glc] run function glc_menu:handler/dialog/show_final with storage mc:dialog temp
scoreboard players set @s gulce_load.dialog -1
tag @s remove glc.show_pending
tag @s remove closed.glc