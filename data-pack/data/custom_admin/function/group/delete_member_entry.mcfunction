# (MAKRO) — {player:"OyuncuAdı",...}
$data modify storage mc:_ temp.perm_revoke set value {player:"$(player)"}
data modify storage mc:_ temp.perm_revoke.perms set from storage mc:_ temp.del_group.permissions
execute if data storage mc:_ temp.perm_revoke.perms[0] run function custom_admin:execute/perm/revoke_loop
data remove storage mc:_ temp.perm_revoke
$scoreboard players remove $(player) gulce_group 1
