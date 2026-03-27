# Hazır Multi: Etkinlik Başlangıcı (MAKRO)
# {id:"...", event_name:"EtkinlikAdi"}
# Hedef @a — adımlar: duyuru, başlık, ses, temiz hava, gündüz
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"@a",steps:[{type:"broadcast",params:{text:"🎉 ETKİNLİK BAŞLADI: $(event_name)",color:"gold"}},{type:"title",params:{text:"🎉 $(event_name)",subtitle:"Etkinlik başladı! Hazır olun!"}},{type:"sound",params:{sound:"ui.toast.challenge_complete",volume:"1",pitch:"0.8"}},{type:"weather",params:{weather:"clear",duration:12000}},{type:"time",params:{time:"day"}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Etkinlik başlangıç paketi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" ($(event_name))","color":"gray"}]
$function custom_admin:add/register_perm {id:"$(id)"}
