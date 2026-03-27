# Hazır Multi: Spawn Sıfırla (MAKRO)
# {id:"...", player:"OyuncuAdi", spawn_x:"0", spawn_y:"64", spawn_z:"0"}
# Adımlar: ışınla, efekt temizle, iyileştir, aç.bar doldur, mesaj
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:[{type:"teleport",params:{x:"$(spawn_x)",y:"$(spawn_y)",z:"$(spawn_z)"}},{type:"potion_clear",params:{}},{type:"heal",params:{amount:20}},{type:"set_hunger",params:{level:20}},{type:"message",params:{text:"[GULCE] Spawn'a ışınlandınız ve sıfırlandınız."}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Spawn sıfırlama paketi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
