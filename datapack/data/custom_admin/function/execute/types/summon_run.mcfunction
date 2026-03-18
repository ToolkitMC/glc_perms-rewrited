# MACRO — {player, entity, x, y, z}
$execute as $(player) at @s run summon $(entity) ~$(x) ~$(y) ~$(z)
$tellraw $(player) ["",{"text":"🐾 Çağrıldı: ","color":"green"},{"text":"$(entity)","color":"yellow"}]
