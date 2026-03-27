# Hazır Multi: Ceza Paketi (MAKRO)
# {id:"...", player:"OyuncuAdi", reason:"Sebep"}
# Adımlar: 1) başlık 2) actionbar 3) efekt temizle 4) hasar 5) admin log
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:[{type:"title",params:{text:"⚠ CEZA",subtitle:"$(reason)"}},{type:"actionbar",params:{text:"Kurallara uyun!"}},{type:"sound",params:{sound:"entity.lightning_bolt.thunder",volume:"1",pitch:"1"}},{type:"potion_clear",params:{}},{type:"damage",params:{amount:10}},{type:"op_log",params:{text:"Ceza uygulandı: $(player) — $(reason)",color:"red"}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Ceza paketi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
