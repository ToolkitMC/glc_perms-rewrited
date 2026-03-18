# MAKRO — {eid, ep_pl, ep_perm, ep_lvl}
# KURAL: $ olmayan satırda $(pl)$(perm)$(lvl) diyalog input key — güvenli, makro yapmaz
# KURAL: $ satırlarında tek temiz makro var per satır
data modify storage mc:dialog ui set value {type:"minecraft:multi_action",title:"İzin Düzenle",inputs:[{type:"minecraft:text",key:"hidden_id",label:"ID (Değiştirme)",max_length:100},{type:"minecraft:text",key:"pl",label:"Oyuncu",max_length:100},{type:"minecraft:text",key:"perm",label:"İzin Adı",max_length:100},{type:"minecraft:text",key:"lvl",label:"Seviye",max_length:10}],can_close_with_escape:1b,pause:0b,actions:[{label:"Kaydet",action:{type:"minecraft:dynamic/run_command",template:"/function custom_admin:edit/permission_full {id:\"$(hidden_id)\",player:\"$(pl)\",permission:\"$(perm)\",level:$(lvl)}"}},{label:"İptal",action:{type:"minecraft:run_command",command:"/trigger gulce_menu set 2"}}]}
$data modify storage mc:dialog ui.inputs[0].initial set value "$(eid)"
$data modify storage mc:dialog ui.inputs[1].initial set value "$(ep_pl)"
$data modify storage mc:dialog ui.inputs[2].initial set value "$(ep_perm)"
$data modify storage mc:dialog ui.inputs[3].initial set value "$(ep_lvl)"
function glc_menu:handler/dialog/open with storage mc:dialog
