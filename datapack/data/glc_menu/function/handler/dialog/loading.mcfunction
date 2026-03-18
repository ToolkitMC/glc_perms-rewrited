dialog show @s {type:"minecraft:notice",title:" ",body:{type:"minecraft:plain_message",contents:{text:"\n\n\n    Hazırlanıyor...\n\n\n",extra:[{score:{objective:"gulce_load.dialog",name:"@s"},type:"score",color:"light_purple",bold:true}],bold:true,italic:false}},can_close_with_escape:0b,pause:0b}
tag @s add glc.show_pending
tag @s add closed.glc
