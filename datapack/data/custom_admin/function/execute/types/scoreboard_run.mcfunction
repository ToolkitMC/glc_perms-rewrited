# MAKRO — {player, operation, target, objective, amount}
execute if data storage mc:_ temp{operation:"set"} run scoreboard players set $(target) $(objective) $(amount)
execute if data storage mc:_ temp{operation:"add"} run scoreboard players add $(target) $(objective) $(amount)
execute if data storage mc:_ temp{operation:"remove"} run scoreboard players remove $(target) $(objective) $(amount)
$tellraw $(player) ["",{"text":"📊 Skor güncellendi: ","color":"aqua"},{"text":"$(target) $(objective)","color":"yellow"}]
