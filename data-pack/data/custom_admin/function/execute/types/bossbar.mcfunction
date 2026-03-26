data modify storage mc:_ temp.bar_id set from storage mc:_ temp.params.bar_id
data modify storage mc:_ temp.text set from storage mc:_ temp.params.text
data modify storage mc:_ temp.color set from storage mc:_ temp.params.color
data modify storage mc:_ temp.style set from storage mc:_ temp.params.style
data modify storage mc:_ temp.value set from storage mc:_ temp.params.value
data modify storage mc:_ temp.max set from storage mc:_ temp.params.max
function custom_admin:execute/types/bossbar_run with storage mc:_ temp
