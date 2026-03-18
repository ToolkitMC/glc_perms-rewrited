# GLC PERMISSIONS (RE-WRITED) — Uninstall
# Scoreboardları sil
scoreboard objectives remove gulce_trigger
scoreboard objectives remove gulce_cooldown
scoreboard objectives remove gulce_id
scoreboard objectives remove gulce_timer
scoreboard objectives remove gulce_flags
scoreboard objectives remove gulce_sched
scoreboard objectives remove gulce_menu
scoreboard objectives remove gulce_load.dialog
# Storage temizle
data remove storage mc:handler data
data remove storage mc:_ temp
data remove storage mc:ui ui
data remove storage mc:dialog ui
data remove storage mc:dialog temp
data remove storage mc:_sched work
data remove storage mc:_sched current
# Tag'leri temizle
tag @a remove gulce_admin
tag @a remove gulce_permitted
tag @a remove glc.show_pending
tag @a remove closed.glc
scoreboard objectives remove gulce_menu.cl
tag @a remove gulce_banned
tag @a remove gulce_muted
tag @a remove glc.close_dialog
tellraw @a ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Datapack kaldırıldı. Şimdi datapacks klasöründen ZIP'i silebilirsiniz.","color":"gray"}]
