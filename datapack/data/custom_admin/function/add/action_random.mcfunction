# MAKRO — {id, player}
# Boş pool ile oluştur, add/multi_item ile action ID ekle (list:"pool")
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"random",params:{pool:[]},player:"$(player)"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Random eylem oluşturuldu: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" — Pool'a ekle: list:pool","color":"gray"}]
