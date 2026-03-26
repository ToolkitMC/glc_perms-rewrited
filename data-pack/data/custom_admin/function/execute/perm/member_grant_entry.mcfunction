# Grup üyesine izin ver — compound list girişi (MAKRO) — {player:"oyuncuAdı"}
$data modify storage mc:_ temp.perm_mgrant.apply set value {player:"$(player)"}
data modify storage mc:_ temp.perm_mgrant.apply.permission set from storage mc:_ temp.perm_mgrant.permission
function custom_admin:execute/perm/grant_apply with storage mc:_ temp.perm_mgrant.apply
