data modify storage mc:_ temp.text set from storage mc:_ temp.params.text
data modify storage mc:_ temp.color set from storage mc:_ temp.params.color
function custom_admin:execute/types/broadcast_run with storage mc:_ temp
