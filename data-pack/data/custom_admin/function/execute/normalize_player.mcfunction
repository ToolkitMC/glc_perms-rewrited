# Oyuncu Adı → Selector (MAKRO) — {player:"..."}
# player "@s" ise olduğu gibi bırak, değilse @a[name=...] selector'ına çevir
execute if data storage mc:_ temp.exec_action{player:"@s"} run data modify storage mc:_ temp.resolved_player set value "@s"
$execute unless data storage mc:_ temp.exec_action{player:"@s"} run data modify storage mc:_ temp.resolved_player set value "@a[name=\"$(player)\",limit=1]"
