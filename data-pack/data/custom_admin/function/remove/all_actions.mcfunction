# Tüm Eylemleri Sil
# UYARI: Geri alınamaz. Tüm kayıtlı eylemler ve izin objeleri silinir.
execute store result score #del_count gulce_id run data get storage mc:handler data.actions
execute if score #del_count gulce_id matches 0 run tellraw @s ["",{"text":"[GULCE] ","color":"gray"},{"text":"Silinecek eylem yok.","color":"dark_gray"}]
execute if score #del_count gulce_id matches 0 run return 0
data modify storage mc:_ temp.uninstall_perms set from storage mc:handler data.actions
execute if data storage mc:_ temp.uninstall_perms[0] run function custom_admin:remove/all_actions_perm_loop
data remove storage mc:_ temp.uninstall_perms
data remove storage mc:handler data.actions
data modify storage mc:handler data.actions set value []
tellraw @s ["",{"text":"[GULCE] ","color":"dark_red","bold":true},{"text":"Tüm eylemler silindi.","color":"red"}]
tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Tüm eylemler temizlendi — ","color":"gray"},{"selector":"@s","color":"aqua"}]
