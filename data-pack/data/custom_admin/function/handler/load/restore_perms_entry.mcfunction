# Tek eylem için izin objesi oluştur (MAKRO ile index alır)
$data modify storage mc:_ temp.perm_restore_action set from storage mc:handler data.actions[$(perm_restore_idx)]
function custom_admin:handler/load/restore_perm_apply with storage mc:_ temp.perm_restore_action
data remove storage mc:_ temp.perm_restore_action
