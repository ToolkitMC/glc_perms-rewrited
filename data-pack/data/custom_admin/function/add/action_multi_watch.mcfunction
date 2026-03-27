# Hazır Multi: Şüpheli İzle (MAKRO)
# {id:"...", player:"OyuncuAdi", watcher:"AdminAdi"}
# Adımlar: admin'i spectator yap, hedef oyuncuya spectate ettir, admin log
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(watcher)",steps:[{type:"gamemode",params:{mode:"spectator"}},{type:"spectate",params:{target:"$(player)"}},{type:"op_log",params:{text:"$(watcher) → $(player) izliyor",color:"yellow"}}]}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzleme paketi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" ($(watcher) → $(player))","color":"gray"}]
$function custom_admin:add/register_perm {id:"$(id)"}
