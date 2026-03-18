execute store result score #lc gulce_id run data get storage mc:handler data.logs
execute if score #lc gulce_id matches 0 run tellraw @s ["",{"text":"[LOG] ","color":"gray","bold":true},{"text":"Kayıt yok.","color":"red"}]
execute if score #lc gulce_id matches 0 run return 0
tellraw @s ["",{"text":"══ Log Geçmişi ══","color":"yellow","bold":true},{"text":" (son ","color":"gray"},{"score":{"name":"#lc","objective":"gulce_id"},"color":"aqua"},{"text":" kayıt)","color":"gray"}]
data modify storage mc:_ temp.log_list set from storage mc:handler data.logs
function custom_admin:log/list_loop
