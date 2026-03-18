# MACRO — {player, item, count}
$give $(player) $(item) $(count)
$tellraw $(player) ["",{"text":"🎁 Verildi: ","color":"green"},{"text":"$(item) x$(count)","color":"yellow"}]
