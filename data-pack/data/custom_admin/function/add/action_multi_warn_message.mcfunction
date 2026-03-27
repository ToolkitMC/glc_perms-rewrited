# Hazır Multi: Renkli Uyarı Mesajı (MAKRO)
# {id:"...", player:"OyuncuAdi", reason:"Sebep", severity:1}
# severity: 1=sarı, 2=turuncu, 3=kırmızı
# func:"warn_message" → multi/func/warn_message_run makrosu çalışır.
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:[{type:"func",params:{func:"warn_message",player:"$(player)",reason:"$(reason)",severity:$(severity)}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Uyarı mesajı eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" (severity: $(severity))","color":"gray"}]
$function custom_admin:add/register_perm {id:"$(id)"}
