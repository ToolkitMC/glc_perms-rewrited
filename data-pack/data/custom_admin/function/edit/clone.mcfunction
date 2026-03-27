# Eylem Klonla (MAKRO) — {from:"kaynak_id", to:"hedef_id"}
# Kaynak eylemi kopyalar, yeni ID ile kaydeder ve izin objesi oluşturur.
$execute unless data storage mc:handler data.actions[{id:"$(from)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Kaynak eylem bulunamadı — ","color":"red"},{"text":"$(from)","color":"yellow"}]
$execute unless data storage mc:handler data.actions[{id:"$(from)"}] run return 0
$execute if data storage mc:handler data.actions[{id:"$(to)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Hedef ID zaten var — ","color":"red"},{"text":"$(to)","color":"yellow"}]
$execute if data storage mc:handler data.actions[{id:"$(to)"}] run return 0
$data modify storage mc:handler data.actions append from storage mc:handler data.actions[{id:"$(from)"}]
$data modify storage mc:handler data.actions[-1].id set value "$(to)"
$scoreboard objectives add gulce_can_$(to) dummy "GLC:$(to)"
$scoreboard players set @a[tag=gulce_admin] gulce_can_$(to) 1
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Eylem klonlandı: ","color":"green"},{"text":"$(from)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(to)","color":"aqua"}]
