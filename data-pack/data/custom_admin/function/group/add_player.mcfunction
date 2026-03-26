# Gruba Oyuncu Ekle (MAKRO) — {group:"...", player:"OyuncuAdı"}
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Grup bulunamadı — ","color":"red"},{"text":"$(group)","color":"yellow"}]
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run return 0
$execute if data storage mc:handler data.groups[{id:"$(group)"}].members[{player:"$(player)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Oyuncu zaten bu grupta — ","color":"red"},{"text":"$(player)","color":"yellow"}]
$execute if data storage mc:handler data.groups[{id:"$(group)"}].members[{player:"$(player)"}] run return 0
$data modify storage mc:handler data.groups[{id:"$(group)"}].members append value {player:"$(player)"}
$scoreboard players add $(player) gulce_group 1
$data modify storage mc:_ temp.perm_grant set value {player:"$(player)"}
$data modify storage mc:_ temp.perm_grant.perms set from storage mc:handler data.groups[{id:"$(group)"}].permissions
execute if data storage mc:_ temp.perm_grant.perms[0] run function custom_admin:execute/perm/grant_loop
data remove storage mc:_ temp.perm_grant
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Oyuncu gruba eklendi: ","color":"green"},{"text":"$(player)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(group)","color":"light_purple"}]
