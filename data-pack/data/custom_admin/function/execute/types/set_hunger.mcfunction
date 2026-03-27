# Eylem: Açlık Barını Ayarla
data modify storage mc:_ temp.level set from storage mc:_ temp.params.level
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/set_hunger_run with storage mc:_ temp
