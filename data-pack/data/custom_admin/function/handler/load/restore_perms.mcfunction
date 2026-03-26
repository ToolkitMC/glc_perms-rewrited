# Yükleme sırasında tüm kayıtlı eylemlerin izin objelerini oluştur
# Not: scoreboard objectives add hata vermez eğer objective zaten varsa (idempotent)
scoreboard players set #perm_idx gulce_id 0
execute store result score #perm_count gulce_id run data get storage mc:handler data.actions
execute if score #perm_count gulce_id matches 1.. run function custom_admin:handler/load/restore_perms_loop
