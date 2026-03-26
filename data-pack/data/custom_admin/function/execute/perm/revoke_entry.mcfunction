# İzin skoru geri al — compound list girişi (MAKRO) — {permission:"izinAdı"}
$data modify storage mc:_ temp.perm_revoke.apply set value {permission:"$(permission)"}
data modify storage mc:_ temp.perm_revoke.apply.player set from storage mc:_ temp.perm_revoke.player
function custom_admin:execute/perm/revoke_apply with storage mc:_ temp.perm_revoke.apply
