data modify storage mc:dialog ui set value {type:"minecraft:notice",title:{text:"❌ İzin Yok",color:"red",bold:true},body:{type:"minecraft:plain_message",contents:"§cHenüz izin eklenmemiş."},can_close_with_escape:1b,pause:0b,action:{label:"◀️ Geri",action:{type:"minecraft:run_command",command:"/trigger gulce_menu set 1"}}}
function glc_menu:handler/dialog/open with storage mc:dialog
