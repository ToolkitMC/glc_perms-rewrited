# Eylem Ekle: Bossbar (MAKRO) — {id:"...", bar_id:"gulce.bar1", text:"Mesaj", color:"red", style:"progress", value:50, max:100}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"bossbar",params:{bar_id:"$(bar_id)",text:"$(text)",color:"$(color)",style:"$(style)",value:$(value),max:$(max)},player:"@a"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Bossbar eylemi eklendi: ","color":"green"},{"text":"$(bar_id)","color":"yellow"}]
$function custom_admin:add/register_perm {id:"$(id)"}
