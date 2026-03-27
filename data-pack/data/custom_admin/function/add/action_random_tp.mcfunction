# Eylem Ekle: Rastgele Işınla (MAKRO) — {id:"...", range:1000, player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"random_tp",params:{range:$(range)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Rastgele ışınlama eylemi eklendi: ","color":"green"},{"text":"Yarıçap: $(range)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
