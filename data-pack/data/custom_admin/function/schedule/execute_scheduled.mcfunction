# ═══════════════════════════════════════════════════
# Zamanlanmış Eylemi Çalıştır - REPEAT KALDIRILDI
# ═══════════════════════════════════════════════════

# Action ID ve player al
data modify storage mc:_ temp.exec_id set from storage mc:_ temp.current_schedule.action_id
data modify storage mc:_ temp.exec_player set from storage mc:_ temp.current_schedule.player

# Eylemi çalıştır
function custom_admin:schedule/run_action with storage mc:_ temp

# ✅ DÜZELTME: Repeat kontrolü kaldırıldı - Direkt sil
function custom_admin:schedule/remove_current with storage mc:_ temp

# Log
tellraw @a[tag=gulce_admin] ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"⏰ Zamanlanmış eylem çalıştırıldı ve silindi","color":"green"}]