# Eylem Ekle: Açlık Ayarla (MAKRO) — {id:"...", level:20, player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"set_hunger",params:{level:$(level)},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Açlık eylemi eklendi: ","color":"green"},{"text":"$(level)/20","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
