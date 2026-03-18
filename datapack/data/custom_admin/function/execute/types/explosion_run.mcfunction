# MACRO — {player, x, y, z, power}
$execute as $(player) at @s run summon minecraft:tnt $(x) $(y) $(z) {Fuse:0,ExplosionPower:$(power)}
$tellraw $(player) ["",{"text":"💥 Patlama: ","color":"red"},{"text":"$(x) $(y) $(z) güç:$(power)","color":"yellow"}]
