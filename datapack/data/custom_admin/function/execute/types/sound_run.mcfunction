# MACRO — {player, sound, volume, pitch}
$execute as $(player) at @s run playsound $(sound) master @s ~ ~ ~ $(volume) $(pitch)
$tellraw $(player) ["",{"text":"🔊 Ses: ","color":"gold"},{"text":"$(sound)","color":"yellow"}]
