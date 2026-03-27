# Tag'li Tüm Oyunculara Eylem Çalıştır (MAKRO) — {id:"eylem_id", tag:"hedef_tag"}
# Belirli bir tag'a sahip tüm oyuncuları o eylemin player'ı yaparak çalıştırır.
$execute as @a[tag=$(tag)] run function custom_admin:execute/action_as_executor {id:"$(id)"}
