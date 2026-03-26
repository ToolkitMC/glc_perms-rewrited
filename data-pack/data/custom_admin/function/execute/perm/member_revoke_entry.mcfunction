# Grup üyesinden izin geri al — compound list girişi (MAKRO) — {player:"oyuncuAdı"}
$data modify storage mc:_ temp.perm_mrevoke.apply set value {player:"$(player)"}
data modify storage mc:_ temp.perm_mrevoke.apply.permission set from storage mc:_ temp.perm_mrevoke.permission
function custom_admin:execute/perm/revoke_apply with storage mc:_ temp.perm_mrevoke.apply
