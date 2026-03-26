# Admin Kaldır — etiketi al (MAKRO)
# {name:"OyuncuAdı"}
$tag @a[name="$(name)",limit=1] remove gulce_admin
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Admin kaldırıldı: ","color":"red"},{"text":"$(name)","color":"yellow"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Admin kaldırıldı: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
