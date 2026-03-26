# Admin Ekle — etiketi ver, kafasını ver (MAKRO)
# {name:"OyuncuAdı"}
$tag @a[name="$(name)",limit=1] add gulce_admin
$execute as @a[name="$(name)",limit=1] run function custom_admin:give/admin_head
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Admin eklendi: ","color":"green"},{"text":"$(name)","color":"yellow"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Yeni admin: ","color":"gray"},{"text":"$(name)","color":"yellow"}]
