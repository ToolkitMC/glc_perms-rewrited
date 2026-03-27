# Multi FUNC: Şiddete Göre Renkli Uyarı Mesajı
# multi/act/run içinde type:"func", func:"warn_message" ile dispatch edilir.
# params: {player:"OyuncuAdi", reason:"Sebep", severity:1}
data modify storage mc:_ temp.fn_player set from storage mc:_ temp.params.player
data modify storage mc:_ temp.fn_reason set from storage mc:_ temp.params.reason
data modify storage mc:_ temp.fn_severity set from storage mc:_ temp.params.severity
function custom_admin:execute/types/multi/func/warn_message_run with storage mc:_ temp
