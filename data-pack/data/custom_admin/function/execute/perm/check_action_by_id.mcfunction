# Eylem ID Bazlı İzin Kontrolü (MAKRO) — storage mc:_ temp.exec_action ile çağrılır
# gulce_admin tag'i olmayan oyuncular için gulce_can_<id> skoru kontrol edilir.
$execute unless score @s gulce_can_$(id) matches 1.. run scoreboard players set @s gulce_perm 0
$execute if score @s gulce_perm matches 0 run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Erişim reddedildi — ","color":"red"},{"text":"$(id)","color":"yellow"},{"text":" eylemi için izniniz yok.","color":"red"}]
