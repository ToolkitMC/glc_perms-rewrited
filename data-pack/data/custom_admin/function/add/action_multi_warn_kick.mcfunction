# Hazır Multi: Uyarı + Kick Paketi (MAKRO)
# {id:"...", player:"OyuncuAdi", reason:"Sebep"}
# Adımlar: 1) uyarı başlığı 2) actionbar 3) uyarı sesi 4) kick
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:[{type:"title",params:{text:"⚠ UYARI",subtitle:"Sunucudan atılacaksınız!"}},{type:"actionbar",params:{text:"Sebep: $(reason)"}},{type:"sound",params:{sound:"block.note_block.bass",volume:"1",pitch:"0.5"}},{type:"kick",params:{reason:"$(reason)"}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Uyarı+Kick multi eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
