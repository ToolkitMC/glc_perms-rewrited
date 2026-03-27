# Hazır Multi: Hoşgeldin Paketi (MAKRO)
# {id:"...", player:"OyuncuAdi"}
# Adımlar: 1) başlık 2) ses 3) mesaj 4) XP bonus
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:[{type:"title",params:{text:"Hoş Geldin!",subtitle:"Sunucuya bağlandınız"}},{type:"sound",params:{sound:"ui.toast.challenge_complete",volume:"1",pitch:"1"}},{type:"message",params:{text:"[GULCE] Hoşgeldin! İyi oyunlar dileriz."}},{type:"xp_add",params:{amount:100,mode:"points"}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Hoşgeldin multi eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
