# Eylem Ekle: Özellik Ayarla (MAKRO)
# {id:"...", attribute:"minecraft:generic.max_health", value:40, player:"OyuncuAdi"}
# Yaygın özellikler: generic.max_health, generic.movement_speed, generic.attack_damage
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"attribute",params:{attribute:"$(attribute)",value:$(value)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Özellik eylemi eklendi: ","color":"green"},{"text":"$(attribute)","color":"yellow"},{"text":" = $(value)","color":"aqua"}]
$function custom_admin:add/register_perm {id:"$(id)"}
