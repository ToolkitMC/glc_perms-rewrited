# İzin skoru ver — compound list girişi (MAKRO) — {permission:"izinAdı"}
# perm_grant.player storage'dan okunur
$data modify storage mc:_ temp.perm_grant.apply set value {permission:"$(permission)"}
data modify storage mc:_ temp.perm_grant.apply.player set from storage mc:_ temp.perm_grant.player
function custom_admin:execute/perm/grant_apply with storage mc:_ temp.perm_grant.apply
