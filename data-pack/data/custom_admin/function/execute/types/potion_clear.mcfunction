# Eylem: Tüm Efektleri Temizle
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/potion_clear_run with storage mc:_ temp
