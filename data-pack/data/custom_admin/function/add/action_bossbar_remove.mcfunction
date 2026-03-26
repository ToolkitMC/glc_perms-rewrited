# Eylem Ekle: Bossbar Kaldır (MAKRO) — {id:"...", bar_id:"gulce.bar1"}
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"bossbar_remove",params:{bar_id:"$(bar_id)"},player:"@s"}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Bossbar kaldırma eylemi eklendi: ","color":"green"},{"text":"$(bar_id)","color":"yellow"}]
