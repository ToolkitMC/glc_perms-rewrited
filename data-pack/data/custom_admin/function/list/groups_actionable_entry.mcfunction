# Grup başlığı
tellraw @s ["",{"text":"━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]
$tellraw @s ["",{"text":"▸ ","color":"light_purple","bold":true},{"text":"$(name)","color":"light_purple","bold":true},{"text":" (","color":"dark_gray"},{"text":"$(id)","color":"yellow"},{"text":") ","color":"dark_gray"},{"text":"Sv.","color":"dark_gray"},{"text":"$(level)","color":"gold"}]

# Üye işlemleri
$tellraw @s ["",{"text":"  ├ Üye: ","color":"dark_gray"},{"text":"[+ Ekle]","color":"aqua","clickEvent":{"action":"suggest_command","value":"/function custom_admin:group/add_player {group:\"$(id)\",player:\"OyuncuAdi\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Gruba oyuncu ekle"}}},{"text":" ","color":"dark_gray"},{"text":"[- Çıkar]","color":"red","clickEvent":{"action":"suggest_command","value":"/function custom_admin:group/remove_player {group:\"$(id)\",player:\"OyuncuAdi\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Gruptan oyuncu çıkar"}}}]

# İzin işlemleri
$tellraw @s ["",{"text":"  ├ İzin: ","color":"dark_gray"},{"text":"[+ Ekle]","color":"green","clickEvent":{"action":"suggest_command","value":"/function custom_admin:group/add_permission {group:\"$(id)\",permission:\"izin_adi\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Gruba izin ekle"}}},{"text":" ","color":"dark_gray"},{"text":"[- Kaldır]","color":"red","clickEvent":{"action":"suggest_command","value":"/function custom_admin:group/remove_permission {group:\"$(id)\",permission:\"izin_adi\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Gruptan izin kaldır"}}}]

# Grup yönetimi
$tellraw @s ["",{"text":"  ├ Yönetim: ","color":"dark_gray"},{"text":"[Seviye Ayarla]","color":"gold","clickEvent":{"action":"suggest_command","value":"/function custom_admin:group/set_level {id:\"$(id)\",level:1}"},"hoverEvent":{"action":"show_text","contents":{"text":"Grup seviyesini değiştir"}}},{"text":" ","color":"dark_gray"},{"text":"[Sil]","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function custom_admin:group/delete {id:\"$(id)\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Grubu sil"}}}]

# Detay
$tellraw @s ["",{"text":"  └ ","color":"dark_gray"},{"text":"[Detay]","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function custom_admin:group/info {id:\"$(id)\"}"},"hoverEvent":{"action":"show_text","contents":{"text":"Üyeleri ve izinleri göster"}}}]
