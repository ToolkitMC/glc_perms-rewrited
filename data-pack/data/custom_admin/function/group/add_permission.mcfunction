# Gruba İzin Ekle (MAKRO) — {group:"...", permission:"build"}
# permissions listesi compound tutar: [{permission:"build"},...]
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Grup bulunamadı — ","color":"red"},{"text":"$(group)","color":"yellow"}]
$execute unless data storage mc:handler data.groups[{id:"$(group)"}] run return 0
$execute if data storage mc:handler data.groups[{id:"$(group)"}].permissions[{permission:"$(permission)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Bu izin grupta zaten var — ","color":"red"},{"text":"$(permission)","color":"yellow"}]
$execute if data storage mc:handler data.groups[{id:"$(group)"}].permissions[{permission:"$(permission)"}] run return 0
$data modify storage mc:handler data.groups[{id:"$(group)"}].permissions append value {permission:"$(permission)"}
$data modify storage mc:_ temp.perm_mgrant set value {permission:"$(permission)"}
$data modify storage mc:_ temp.perm_mgrant.members set from storage mc:handler data.groups[{id:"$(group)"}].members
execute if data storage mc:_ temp.perm_mgrant.members[0] run function custom_admin:execute/perm/member_grant_loop
data remove storage mc:_ temp.perm_mgrant
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Gruba izin eklendi: ","color":"green"},{"text":"$(permission)","color":"green"},{"text":" → ","color":"gray"},{"text":"$(group)","color":"light_purple"}]
