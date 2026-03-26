# Eylem Ekle: Skor Sıfırla (MAKRO)
# {id:"...", objective:"gulce_cooldown", player:"@s"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"scoreboard_reset",params:{objective:"$(objective)"},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Skor sıfırla eylemi eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" (","color":"dark_gray"},{"text":"$(objective)","color":"yellow"},{"text":")","color":"dark_gray"}]
$function custom_admin:add/register_perm {id:"$(id)"}
