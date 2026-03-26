# Döngü: actions[#perm_idx] için izin objesi oluştur
execute store result storage mc:_ temp.perm_restore_idx int 1 run scoreboard players get #perm_idx gulce_id
function custom_admin:handler/load/restore_perms_entry with storage mc:_ temp
scoreboard players add #perm_idx gulce_id 1
execute if score #perm_idx gulce_id < #perm_count gulce_id run function custom_admin:handler/load/restore_perms_loop
