# Gruptan Oyuncu Çıkar (MAKRO) — {group:"...", player:"OyuncuAdı"}
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Grup bulunamadı — ","color":"red"},{"text":"$(group)","color":"yellow"}]
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run return 0
$execute unless data storage mc:handler data.groups[{id:"$(group)"}].members[{player:"$(player)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Oyuncu bu grupta değil — ","color":"red"},{"text":"$(player)","color":"yellow"}]
$execute unless data storage mc:handler data.groups[{id:"$(group)"}].members[{player:"$(player)"}] run return 0
$data modify storage mc:_ temp.perm_revoke set value {player:"$(player)"}
$data modify storage mc:_ temp.perm_revoke.perms set from storage mc:handler data.groups[{id:"$(group)"}].permissions
execute if data storage mc:_ temp.perm_revoke.perms[0] run function custom_admin:execute/perm/revoke_loop
data remove storage mc:_ temp.perm_revoke
$data remove storage mc:handler data.groups[{id:"$(group)"}].members[{player:"$(player)"}]
$scoreboard players remove $(player) gulce_group 1
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu gruptan çıkarıldı: ","color":"red"},{"text":"$(player)","color":"yellow"},{"text":" — izinleri temizlendi.","color":"dark_gray"}]
