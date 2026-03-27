# MAKRO — {fn_player:"OyuncuAdi", fn_reason:"Sebep", fn_severity:1}
# Severity: 1=yellow, 2=gold, 3=red
# Severity'yi scoreboard'a yaz
$scoreboard players set #warn_sev gulce_id $(fn_severity)
# Rengi storage'a yaz (varsayılan yellow)
data modify storage mc:_ temp.fn_color set value "yellow"
execute if score #warn_sev gulce_id matches 2 run data modify storage mc:_ temp.fn_color set value "gold"
execute if score #warn_sev gulce_id matches 3 run data modify storage mc:_ temp.fn_color set value "red"
# Renkli mesajı gönder
function custom_admin:execute/types/multi/func/warn_message_color with storage mc:_ temp
# Admin log
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE LOG] ","color":"dark_red","bold":true},{"text":"Uyarı gönderildi → ","color":"gray"},{"text":"$(fn_player)","color":"yellow"},{"text":" (severity: $(fn_severity))","color":"dark_gray"}]
# Temizlik
scoreboard players reset #warn_sev gulce_id
data remove storage mc:_ temp.fn_color
