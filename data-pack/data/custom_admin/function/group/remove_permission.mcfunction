# Gruptan İzin Kaldır (MAKRO) — {group:"...", permission:"build"}
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Grup bulunamadı — ","color":"red"},{"text":"$(group)","color":"yellow"}]
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run return 0
$data modify storage mc:_ temp.perm_mrevoke set value {permission:"$(permission)"}
$data modify storage mc:_ temp.perm_mrevoke.members set from storage mc:handler data.groups[{id:"$(group)"}].members
$data remove storage mc:handler data.groups[{id:"$(group)"}].permissions[{permission:"$(permission)"}]
execute if data storage mc:_ temp.perm_mrevoke.members[0] run function custom_admin:execute/perm/member_revoke_loop
data remove storage mc:_ temp.perm_mrevoke
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Gruptan izin kaldırıldı: ","color":"red"},{"text":"$(permission)","color":"yellow"},{"text":" — üyeler güncellendi.","color":"dark_gray"}]
