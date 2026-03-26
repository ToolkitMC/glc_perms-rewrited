# Eylem Çalıştır (MAKRO) — {id:"eylem_id"}
$data modify storage mc:_ temp.exec_action set from storage mc:handler data.actions[{id:"$(id)"}]
$execute unless data storage mc:_ temp.exec_action run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Eylem bulunamadı — ","color":"red"},{"text":"$(id)","color":"yellow"}]
execute unless data storage mc:_ temp.exec_action run return 0
# İzin kontrolü
execute if data storage mc:_ temp.exec_action.required_permission run function custom_admin:execute/perm/check_action
execute if score @s gulce_perm matches 0 run return 0
# Player field'ını selector'a normalize et
function custom_admin:execute/normalize_player with storage mc:_ temp.exec_action
data modify storage mc:_ temp.params set from storage mc:_ temp.exec_action.params
# — Mevcut tipler —
execute if data storage mc:_ temp.exec_action{type:"teleport"} run function custom_admin:execute/types/teleport
execute if data storage mc:_ temp.exec_action{type:"message"} run function custom_admin:execute/types/message
execute if data storage mc:_ temp.exec_action{type:"sound"} run function custom_admin:execute/types/sound
execute if data storage mc:_ temp.exec_action{type:"particle"} run function custom_admin:execute/types/particle
execute if data storage mc:_ temp.exec_action{type:"title"} run function custom_admin:execute/types/title
execute if data storage mc:_ temp.exec_action{type:"summon"} run function custom_admin:execute/types/summon
execute if data storage mc:_ temp.exec_action{type:"command"} run function custom_admin:execute/types/command
execute if data storage mc:_ temp.exec_action{type:"function"} run function custom_admin:execute/types/function_call
execute if data storage mc:_ temp.exec_action{type:"clear"} run function custom_admin:execute/types/clear
execute if data storage mc:_ temp.exec_action{type:"gamemode"} run function custom_admin:execute/types/gamemode
execute if data storage mc:_ temp.exec_action{type:"effect"} run function custom_admin:execute/types/effect
execute if data storage mc:_ temp.exec_action{type:"give"} run function custom_admin:execute/types/give
execute if data storage mc:_ temp.exec_action{type:"multi"} run function custom_admin:execute/types/multi
# — Oyuncu —
execute if data storage mc:_ temp.exec_action{type:"kick"} run function custom_admin:execute/types/kick
execute if data storage mc:_ temp.exec_action{type:"freeze"} run function custom_admin:execute/types/freeze
execute if data storage mc:_ temp.exec_action{type:"unfreeze"} run function custom_admin:execute/types/unfreeze
execute if data storage mc:_ temp.exec_action{type:"tp_to_admin"} run function custom_admin:execute/types/tp_to_admin
execute if data storage mc:_ temp.exec_action{type:"damage"} run function custom_admin:execute/types/damage
execute if data storage mc:_ temp.exec_action{type:"heal"} run function custom_admin:execute/types/heal
# — Dünya —
execute if data storage mc:_ temp.exec_action{type:"weather"} run function custom_admin:execute/types/weather
execute if data storage mc:_ temp.exec_action{type:"time"} run function custom_admin:execute/types/time
execute if data storage mc:_ temp.exec_action{type:"gamerule"} run function custom_admin:execute/types/gamerule
execute if data storage mc:_ temp.exec_action{type:"fill"} run function custom_admin:execute/types/fill
# — Görsel —
execute if data storage mc:_ temp.exec_action{type:"actionbar"} run function custom_admin:execute/types/actionbar
execute if data storage mc:_ temp.exec_action{type:"bossbar"} run function custom_admin:execute/types/bossbar
execute if data storage mc:_ temp.exec_action{type:"bossbar_remove"} run function custom_admin:execute/types/bossbar_remove
# — Sistem —
execute if data storage mc:_ temp.exec_action{type:"broadcast"} run function custom_admin:execute/types/broadcast
execute if data storage mc:_ temp.exec_action{type:"score_add"} run function custom_admin:execute/types/score_add
execute if data storage mc:_ temp.exec_action{type:"score_set"} run function custom_admin:execute/types/score_set
execute if data storage mc:_ temp.exec_action{type:"tag_add"} run function custom_admin:execute/types/tag_add
execute if data storage mc:_ temp.exec_action{type:"tag_remove"} run function custom_admin:execute/types/tag_remove
data remove storage mc:_ temp.exec_action
data remove storage mc:_ temp.params
data remove storage mc:_ temp.resolved_player