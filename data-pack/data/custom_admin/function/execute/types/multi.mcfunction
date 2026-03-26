# Multi — Çoklu eylem zincirleme
# Her step kendi player'ını kullanır; yoksa multi'nin resolved_player'ını miras alır.
data modify storage mc:_ multi.queue set from storage mc:_ temp.exec_action.steps
data modify storage mc:_ multi.player set from storage mc:_ temp.resolved_player

execute if data storage mc:_ multi.queue[0] run function custom_admin:execute/types/multi_drain

data remove storage mc:_ multi
