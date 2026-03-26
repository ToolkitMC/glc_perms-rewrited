# Eylem İzni Kaydı (MAKRO) — {id:"..."}
# Her eylem için gulce_can_<id> objective oluşturur ve admins'e verir.
$scoreboard objectives add gulce_can_$(id) dummy "GLC:$(id)"
$scoreboard players set @a[tag=gulce_admin] gulce_can_$(id) 1
