# MACRO — {player, item, count}
$clear $(player) $(item) $(count)
$tellraw $(player) ["",{"text":"🗑️ Temizlendi: ","color":"red"},{"text":"$(item)","color":"yellow"}]
