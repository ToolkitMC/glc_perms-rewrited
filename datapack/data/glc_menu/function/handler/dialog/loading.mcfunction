dialog show @s {type:"minecraft:notice",title:" ",body:{type:"minecraft:plain_message",contents:{text:"\n\n\n    Hazırlanıyor...\n\n\n",bold:true,italic:false}},can_close_with_escape:0b,pause:0b,action:{label:"İptal",action:{type:"minecraft:run_command",command:"trigger gulce_menu.cl"}}}

tag @s add glc.show_pending
tag @s add closed.glc
