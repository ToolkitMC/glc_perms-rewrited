# İzin Skoru Ver (MAKRO) — {player:"...", permission:"..."}
$scoreboard objectives add gulce_can_$(permission) dummy "GLC:$(permission)"
$scoreboard players add $(player) gulce_can_$(permission) 1
