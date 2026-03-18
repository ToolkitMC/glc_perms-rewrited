# MAKRO — {player, operation, team}
execute if data storage mc:_ temp{operation:"join"} run team join $(team) $(player)
execute if data storage mc:_ temp{operation:"leave"} run team leave $(player)
$tellraw $(player) ["",{"text":"⚔️ Takım: ","color":"gold"},{"text":"$(team) ($(operation))","color":"yellow"}]
