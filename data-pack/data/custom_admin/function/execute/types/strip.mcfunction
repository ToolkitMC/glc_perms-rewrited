# Eylem: Büyüleri Temizle (eldeki eşyadan)
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/strip_run with storage mc:_ temp
