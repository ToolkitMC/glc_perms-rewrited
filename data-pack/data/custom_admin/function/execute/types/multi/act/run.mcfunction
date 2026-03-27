# Multi Drain — kuyruktan bir adım al, çalıştır, sil, devam et
# Silme işlemi type dispatch'ten ÖNCE yapılıyor — sonsuz döngü riski yok.
data modify storage mc:_ multi.step set from storage mc:_ multi.queue[0]
data remove storage mc:_ multi.queue[0]
execute unless data storage mc:_ multi.step.player run data modify storage mc:_ multi.step.player set from storage mc:_ multi.player
data modify storage mc:_ temp.exec_action set from storage mc:_ multi.step
data modify storage mc:_ temp.resolved_player set from storage mc:_ multi.step.player
data modify storage mc:_ temp.params set from storage mc:_ multi.step.params
# — Mesaj / Görsel —
execute if data storage mc:_ temp.exec_action{type:"teleport"} run function custom_admin:execute/types/teleport
execute if data storage mc:_ temp.exec_action{type:"message"} run function custom_admin:execute/types/message
execute if data storage mc:_ temp.exec_action{type:"sound"} run function custom_admin:execute/types/sound
execute if data storage mc:_ temp.exec_action{type:"particle"} run function custom_admin:execute/types/particle
execute if data storage mc:_ temp.exec_action{type:"title"} run function custom_admin:execute/types/title
execute if data storage mc:_ temp.exec_action{type:"actionbar"} run function custom_admin:execute/types/actionbar
execute if data storage mc:_ temp.exec_action{type:"broadcast"} run function custom_admin:execute/types/broadcast
execute if data storage mc:_ temp.exec_action{type:"bossbar"} run function custom_admin:execute/types/bossbar
execute if data storage mc:_ temp.exec_action{type:"bossbar_remove"} run function custom_admin:execute/types/bossbar_remove
execute if data storage mc:_ temp.exec_action{type:"op_log"} run function custom_admin:execute/types/op_log
# — Oyuncu —
execute if data storage mc:_ temp.exec_action{type:"effect"} run function custom_admin:execute/types/effect
execute if data storage mc:_ temp.exec_action{type:"give"} run function custom_admin:execute/types/give
execute if data storage mc:_ temp.exec_action{type:"clear"} run function custom_admin:execute/types/clear
execute if data storage mc:_ temp.exec_action{type:"gamemode"} run function custom_admin:execute/types/gamemode
execute if data storage mc:_ temp.exec_action{type:"kick"} run function custom_admin:execute/types/kick
execute if data storage mc:_ temp.exec_action{type:"freeze"} run function custom_admin:execute/types/freeze
execute if data storage mc:_ temp.exec_action{type:"unfreeze"} run function custom_admin:execute/types/unfreeze
execute if data storage mc:_ temp.exec_action{type:"tp_to_admin"} run function custom_admin:execute/types/tp_to_admin
execute if data storage mc:_ temp.exec_action{type:"damage"} run function custom_admin:execute/types/damage
execute if data storage mc:_ temp.exec_action{type:"heal"} run function custom_admin:execute/types/heal
execute if data storage mc:_ temp.exec_action{type:"kill"} run function custom_admin:execute/types/kill
execute if data storage mc:_ temp.exec_action{type:"spectate"} run function custom_admin:execute/types/spectate
execute if data storage mc:_ temp.exec_action{type:"xp_add"} run function custom_admin:execute/types/xp_add
execute if data storage mc:_ temp.exec_action{type:"xp_set"} run function custom_admin:execute/types/xp_set
execute if data storage mc:_ temp.exec_action{type:"attribute"} run function custom_admin:execute/types/attribute
execute if data storage mc:_ temp.exec_action{type:"enchant"} run function custom_admin:execute/types/enchant
execute if data storage mc:_ temp.exec_action{type:"strip"} run function custom_admin:execute/types/strip
execute if data storage mc:_ temp.exec_action{type:"potion_clear"} run function custom_admin:execute/types/potion_clear
execute if data storage mc:_ temp.exec_action{type:"set_hunger"} run function custom_admin:execute/types/set_hunger
execute if data storage mc:_ temp.exec_action{type:"random_tp"} run function custom_admin:execute/types/random_tp
# — Dünya —
execute if data storage mc:_ temp.exec_action{type:"weather"} run function custom_admin:execute/types/weather
execute if data storage mc:_ temp.exec_action{type:"time"} run function custom_admin:execute/types/time
execute if data storage mc:_ temp.exec_action{type:"gamerule"} run function custom_admin:execute/types/gamerule
execute if data storage mc:_ temp.exec_action{type:"fill"} run function custom_admin:execute/types/fill
execute if data storage mc:_ temp.exec_action{type:"summon"} run function custom_admin:execute/types/summon
# — Sistem —
execute if data storage mc:_ temp.exec_action{type:"command"} run function custom_admin:execute/types/command
execute if data storage mc:_ temp.exec_action{type:"function"} run function custom_admin:execute/types/function_call
execute if data storage mc:_ temp.exec_action{type:"score_add"} run function custom_admin:execute/types/score_add
execute if data storage mc:_ temp.exec_action{type:"score_set"} run function custom_admin:execute/types/score_set
execute if data storage mc:_ temp.exec_action{type:"tag_add"} run function custom_admin:execute/types/tag_add
execute if data storage mc:_ temp.exec_action{type:"tag_remove"} run function custom_admin:execute/types/tag_remove
execute if data storage mc:_ temp.exec_action{type:"scoreboard_reset"} run function custom_admin:execute/types/scoreboard_reset
execute if data storage mc:_ temp.exec_action{type:"advancement_grant"} run function custom_admin:execute/types/advancement_grant
execute if data storage mc:_ temp.exec_action{type:"advancement_revoke"} run function custom_admin:execute/types/advancement_revoke
# — Storage / NBT —
execute if data storage mc:_ temp.exec_action{type:"storage_set"} run function custom_admin:execute/types/storage_set
execute if data storage mc:_ temp.exec_action{type:"storage_remove"} run function custom_admin:execute/types/storage_remove
execute if data storage mc:_ temp.exec_action{type:"nbt_copy"} run function custom_admin:execute/types/nbt_copy
# — CMD (params.cmd ile seçilen yardımcı fonksiyonlar) —
execute if data storage mc:_ temp.exec_action{type:"cmd",params:{cmd:"broadcast_freeze"}} run function custom_admin:execute/types/multi/cmd/broadcast_freeze
# — FUNC (params.func ile seçilen gelişmiş fonksiyonlar) —
execute if data storage mc:_ temp.exec_action{type:"func",params:{func:"warn_message"}} run function custom_admin:execute/types/multi/func/warn_message
# — Devam —
execute if data storage mc:_ multi.queue[0] run function custom_admin:execute/types/multi/act/run
