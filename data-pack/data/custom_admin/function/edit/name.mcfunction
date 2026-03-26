# Grup Adı Değiştir (MAKRO) — {id:"...", name:"YeniAd"}
$data modify storage mc:handler data.groups[{id:"$(id)"}].name set value "$(name)"
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Grup adı güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"},{"text":" → ","color":"gray"},{"text":"$(name)","color":"light_purple"}]
