# Eylem Çalıştır — Yürüten @s olarak (MAKRO) — {id:"eylem_id"}
# execute/action.mcfunction'dan farkı: player field @s olarak override edilir.
$data modify storage mc:_ temp.exec_action set from storage mc:handler data.actions[{id:"$(id)"}]
execute unless data storage mc:_ temp.exec_action run return 0
data modify storage mc:_ temp.exec_action.player set value "@s"
data modify storage mc:_ temp.resolved_player set value "@s"
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
execute if data storage mc:_ temp.exec_action{type:"multi"} run function custom_admin:execute/types/multi/act/main
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
# — Storage / NBT —
execute if data storage mc:_ temp.exec_action{type:"storage_set"} run function custom_admin:execute/types/storage_set
execute if data storage mc:_ temp.exec_action{type:"storage_remove"} run function custom_admin:execute/types/storage_remove
execute if data storage mc:_ temp.exec_action{type:"nbt_copy"} run function custom_admin:execute/types/nbt_copy
execute if data storage mc:_ temp.exec_action{type:"scoreboard_reset"} run function custom_admin:execute/types/scoreboard_reset

# — Yeni eylemler —
execute if data storage mc:_ temp.exec_action{type:"xp_add"} run function custom_admin:execute/types/xp_add
execute if data storage mc:_ temp.exec_action{type:"xp_set"} run function custom_admin:execute/types/xp_set
execute if data storage mc:_ temp.exec_action{type:"kill"} run function custom_admin:execute/types/kill
execute if data storage mc:_ temp.exec_action{type:"spectate"} run function custom_admin:execute/types/spectate
execute if data storage mc:_ temp.exec_action{type:"advancement_grant"} run function custom_admin:execute/types/advancement_grant
execute if data storage mc:_ temp.exec_action{type:"advancement_revoke"} run function custom_admin:execute/types/advancement_revoke
execute if data storage mc:_ temp.exec_action{type:"attribute"} run function custom_admin:execute/types/attribute
# — v1.1.0 eklentileri —
execute if data storage mc:_ temp.exec_action{type:"enchant"} run function custom_admin:execute/types/enchant
execute if data storage mc:_ temp.exec_action{type:"strip"} run function custom_admin:execute/types/strip
execute if data storage mc:_ temp.exec_action{type:"potion_clear"} run function custom_admin:execute/types/potion_clear
execute if data storage mc:_ temp.exec_action{type:"set_hunger"} run function custom_admin:execute/types/set_hunger
execute if data storage mc:_ temp.exec_action{type:"random_tp"} run function custom_admin:execute/types/random_tp
execute if data storage mc:_ temp.exec_action{type:"op_log"} run function custom_admin:execute/types/op_log

data remove storage mc:_ temp.exec_action
data remove storage mc:_ temp.params
data remove storage mc:_ temp.resolved_player
