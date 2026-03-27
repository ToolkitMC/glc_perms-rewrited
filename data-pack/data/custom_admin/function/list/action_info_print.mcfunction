# Eylem Detay Yazdır (MAKRO) — storage mc:_ temp.info_action ile
tellraw @s ["",{"text":"── Eylem Detayı ──","color":"aqua","bold":true}]
$tellraw @s ["",{"text":" ID: ","color":"gray"},{"text":"$(id)","color":"yellow"}]
$tellraw @s ["",{"text":" Tip: ","color":"gray"},{"text":"$(type)","color":"aqua"}]
$tellraw @s ["",{"text":" Hedef: ","color":"gray"},{"text":"$(player)","color":"green"}]
tellraw @s ["",{"text":" ────────────────","color":"dark_gray"}]
