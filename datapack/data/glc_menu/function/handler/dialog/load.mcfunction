# Storage başlat
$data modify storage mc:dialog temp.final_ui set value $(dialogData)

# Loading göster
tag @s add glc.show_pending
function glc_menu:handler/dialog/loading

# Timer başlat
$scoreboard players set @s gulce_load.dialog $(ticks)

# Açıldı olarak işaretle
function glc_menu:handler/dialog/open