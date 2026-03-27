# Oyuncu Adı → Selector (MAKRO) — storage mc:_ temp.exec_action ile çağrılır
# BUG FIX: player field yoksa macro $(player) abort eder. Önce default ata.
execute unless data storage mc:_ temp.exec_action.player run data modify storage mc:_ temp.exec_action.player set value "@s"
execute if data storage mc:_ temp.exec_action{player:"@s"} run data modify storage mc:_ temp.resolved_player set value "@s"
execute if data storage mc:_ temp.exec_action{player:"@a"} run data modify storage mc:_ temp.resolved_player set value "@a"
$execute unless data storage mc:_ temp.exec_action{player:"@s"} unless data storage mc:_ temp.exec_action{player:"@a"} run data modify storage mc:_ temp.resolved_player set value "@a[name=\"$(player)\",limit=1]"
