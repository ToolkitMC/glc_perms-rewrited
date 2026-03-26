# gulce_can_* objective'lerini kaldır
# mc:handler data.permissions listesindeki her izin için scoreboard objective sil
data modify storage mc:_ temp.uninstall_perms set from storage mc:handler data.permissions
execute if data storage mc:_ temp.uninstall_perms[0] run function custom_admin:handler/uninstall/perm_loop
data remove storage mc:_ temp.uninstall_perms
