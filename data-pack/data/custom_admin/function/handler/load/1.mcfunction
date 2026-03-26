# GULCE Admin Power - Yükleme İşleyicisi (1.21.4)
execute if data storage mc:handler data{loaded:1b} run return 1

# Puan tahtaları (idempotent - zaten varsa hata vermez)
scoreboard objectives add gulce_trigger trigger "GULCE Tetikleyici"
scoreboard objectives add gulce_cooldown dummy "GULCE Bekleme"
scoreboard objectives add gulce_timer dummy "GULCE Zamanlayıcı"
scoreboard objectives add gulce_group dummy "GULCE Grup Seviyesi"
scoreboard objectives add gulce_perm dummy "GULCE Izin Kontrol"
scoreboard objectives add gulce_rc minecraft.used:minecraft.carrot_on_a_stick "GULCE RIGHT CLICK"
scoreboard objectives add gulce_id dummy "GULCE ID"

# Ana depolama — mevcut data varsa koru, yoksa sıfırdan oluştur
execute unless data storage mc:handler data.actions run data modify storage mc:handler data.actions set value []
execute unless data storage mc:handler data.permissions run data modify storage mc:handler data.permissions set value []
execute unless data storage mc:handler data.groups run data modify storage mc:handler data.groups set value []
execute unless data storage mc:handler data.meta run data modify storage mc:handler data.meta set value [{version:"1.2.3",pack:"GULCE Admin Power"}]
data modify storage mc:_ temp set value {}

# Yüklü olarak işaretle
data modify storage mc:handler data.loaded set value 1b

# Tetikleyici aktif et
scoreboard players enable @a gulce_trigger

# Admin kafalarını ver
execute as @a[tag=gulce_admin] run function custom_admin:give/admin_head

# Yükleme mesajı
tellraw @a ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Admin Power v1.0.0 yüklendi!","color":"green"}]
execute as @a[tag=gulce_admin] run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Menü: ","color":"gray"},{"text":"/trigger gulce_trigger set 1","color":"yellow"}]
