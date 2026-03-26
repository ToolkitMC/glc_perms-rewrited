# (MAKRO) — {id:"...", ...}
$scoreboard objectives add gulce_can_$(id) dummy "GLC:$(id)"
$scoreboard players set @a[tag=gulce_admin] gulce_can_$(id) 1
