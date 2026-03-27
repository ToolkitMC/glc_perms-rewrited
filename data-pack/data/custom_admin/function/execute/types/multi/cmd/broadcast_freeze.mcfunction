# Multi CMD: Duyuru + Dondur
# multi/act/run içinde type:"cmd", cmd:"broadcast_freeze" ile dispatch edilir.
# params storage'dan: {player:"OyuncuAdi", reason:"Sebep"}
data modify storage mc:_ temp.cmd_player set from storage mc:_ temp.params.player
data modify storage mc:_ temp.cmd_reason set from storage mc:_ temp.params.reason
function custom_admin:execute/types/multi/cmd/broadcast_freeze_run with storage mc:_ temp
