# Eylem: Büyü Ekle
data modify storage mc:_ temp.enchantment set from storage mc:_ temp.params.enchantment
data modify storage mc:_ temp.lvl set from storage mc:_ temp.params.lvl
data modify storage mc:_ temp.player set from storage mc:_ temp.resolved_player
function custom_admin:execute/types/enchant_run with storage mc:_ temp
