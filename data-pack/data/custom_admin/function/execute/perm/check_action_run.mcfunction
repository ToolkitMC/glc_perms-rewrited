# İzin Kontrolü (MAKRO) — exec_action alanlarıyla çağrılır — {required_permission:"izinAdı",...}
$execute if score @s gulce_can_$(required_permission) matches 1.. run return 0
$tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"İzin reddedildi","color":"red"},{"text":" — ","color":"dark_gray"},{"text":"$(required_permission)","color":"yellow"},{"text":" yetkisi gereklidir.","color":"red"}]
scoreboard players set @s gulce_perm 0
