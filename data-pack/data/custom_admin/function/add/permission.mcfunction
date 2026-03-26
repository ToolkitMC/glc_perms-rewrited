# İzin Tanımı Ekle (MAKRO) — {id:"p1", permission:"admin", level:1}
# NOT: Bu fonksiyon izin TANIMINI kaydeder ve scoreboard objective'ini oluşturur.
# Oyunculara izin vermek için group/add_player veya group/add_permission kullanın.
$execute if data storage mc:handler data.permissions[{id:"$(id)"}] run tellraw @s ["",{"text":"[GULCE] ","color":"red","bold":true},{"text":"Hata: Bu ID zaten kayıtlı — ","color":"red"},{"text":"$(id)","color":"yellow"}]
$execute if data storage mc:handler data.permissions[{id:"$(id)"}] run return 0
$scoreboard objectives add gulce_can_$(permission) dummy "GLC:$(permission)"
$data modify storage mc:handler data.permissions append value {id:"$(id)",permission:"$(permission)",level:$(level)}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"İzin tanımı eklendi: ","color":"green"},{"text":"$(permission)","color":"yellow"},{"text":" (","color":"dark_gray"},{"text":"$(id)","color":"yellow"},{"text":")","color":"dark_gray"}]
$tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Yeni izin tanımı: ","color":"gray"},{"text":"$(permission)","color":"yellow"},{"text":" — ","color":"dark_gray"},{"selector":"@s","color":"aqua"}]
