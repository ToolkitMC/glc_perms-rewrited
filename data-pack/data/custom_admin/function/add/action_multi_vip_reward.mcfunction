# Hazır Multi: VIP Ödül Paketi (MAKRO)
# {id:"...", player:"OyuncuAdi"}
# Adımlar: 1) başlık 2) ses 3) diamond + elytra ver 4) XP 5) mesaj 6) admin log
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:[{type:"title",params:{text:"⭐ VIP Ödül",subtitle:"Tebrikler! Ödülünüz hazır."}},{type:"sound",params:{sound:"ui.toast.challenge_complete",volume:"1",pitch:"1.2"}},{type:"give",params:{item:"minecraft:diamond",count:64}},{type:"give",params:{item:"minecraft:elytra",count:1}},{type:"xp_add",params:{amount:500,mode:"points"}},{type:"message",params:{text:"[GULCE] VIP ödülünüz teslim edildi! Elmas x64, Elytra, 500 XP"}},{type:"op_log",params:{text:"VIP ödül verildi: $(player)",color:"gold"}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"VIP ödül paketi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
