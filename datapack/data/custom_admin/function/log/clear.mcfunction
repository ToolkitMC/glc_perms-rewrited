execute store result score #lc gulce_id run data get storage mc:handler data.logs
data modify storage mc:handler data.logs set value []
tellraw @s ["",{"text":"[LOG] ","color":"gray","bold":true},{"text":"Temizlendi: ","color":"red"},{"score":{"name":"#lc","objective":"gulce_id"},"color":"yellow"},{"text":" kayıt silindi","color":"gray"}]
