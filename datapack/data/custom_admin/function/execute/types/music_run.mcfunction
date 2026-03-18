# MACRO — {player, track, volume, pitch}
$execute as $(player) at @s run playsound $(track) music @s ~ ~ ~ $(volume) $(pitch)
$tellraw $(player) ["",{"text":"🎵 Müzik: ","color":"light_purple"},{"text":"$(track)","color":"yellow"}]
