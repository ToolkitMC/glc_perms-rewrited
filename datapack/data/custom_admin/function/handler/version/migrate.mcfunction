# Eski versiyonu oku, yenisiyle değiştir
data modify storage mc:_ temp.old_ver set from storage mc:handler data.meta.version
data modify storage mc:handler data.meta.version set value "1.0.0"
function custom_admin:handler/version/migrate_msg with storage mc:_ temp
