# MAKRO — {naid, napl}
data modify storage mc:dialog ui set value {type:"minecraft:multi_action",title:"Çoklu Function",body:{type:"minecraft:plain_message",contents:"Boş liste oluşturulur. Eylem listesinden Düzenle ile sınırsız function ekleyin."},inputs:[{type:"minecraft:text",key:"act_id",label:"Eylem ID",max_length:100},{type:"minecraft:text",key:"act_pl",label:"Oyuncu",max_length:50}],can_close_with_escape:1b,pause:0b,actions:[{label:"Oluştur",action:{type:"minecraft:dynamic/run_command",template:"/function custom_admin:add/action_multi_function {id:\"$(act_id)\",player:\"$(act_pl)\"}"}}]}
$data modify storage mc:dialog ui.inputs[0].initial set value "$(naid)"
$data modify storage mc:dialog ui.inputs[1].initial set value "$(napl)"
function glc_menu:handler/dialog/open with storage mc:dialog
