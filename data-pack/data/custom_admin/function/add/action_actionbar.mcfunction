# Eylem Ekle: Aksiyon Çubuğu (MAKRO) — {id:"...", text:"Mesaj", player:"OyuncuAdi"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"actionbar",params:{text:"$(text)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Aksiyon çubuğu eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
