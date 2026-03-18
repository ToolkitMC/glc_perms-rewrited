data modify storage mc:_ temp.operation set from storage mc:_ temp.params.operation
data modify storage mc:_ temp.objective set from storage mc:_ temp.params.objective
data modify storage mc:_ temp.target set from storage mc:_ temp.params.target
data modify storage mc:_ temp.amount set from storage mc:_ temp.params.amount
data modify storage mc:_ temp.player set from storage mc:_ temp.ep
function custom_admin:execute/types/scoreboard_run with storage mc:_ temp
