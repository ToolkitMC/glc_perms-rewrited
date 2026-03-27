# Eylem: Rastgele Işınla
data modify storage mc:_ temp.range set from storage mc:_ temp.params.range
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/random_tp_run with storage mc:_ temp
