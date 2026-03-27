# Eylem İzin Durumunu Sorgula (MAKRO) — {id:"eylem_id"}
# @s'in bu eylemi çalıştırma iznini kontrol eder.
$execute if entity @s[tag=gulce_admin] run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"$(id) — ","color":"gray"},{"text":"✅ Admin (tam erişim)","color":"green"}]
execute if entity @s[tag=gulce_admin] run return 0
$execute if score @s gulce_can_$(id) matches 1.. run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"$(id) — ","color":"gray"},{"text":"✅ İzin var","color":"green"}]
$execute unless score @s gulce_can_$(id) matches 1.. run tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"$(id) — ","color":"gray"},{"text":"❌ İzin yok","color":"red"}]
