# MAKRO — {naid, napl}
data modify storage mc:dialog ui set value {type:"minecraft:multi_action",title:"Hava Eylemi",inputs:[{type:"minecraft:text",key:"act_id",label:"Eylem ID",max_length:100},{type:"minecraft:text",key:"act_pl",label:"Oyuncu",max_length:50},{type:"minecraft:single_option",key:"v1",label:"Hava",options:[{id:"clear",display:"Güneşli"},{id:"rain",display:"Yağmur"},{id:"thunder",display:"Fırtına"}]},{type:"minecraft:text",key:"v2",label:"Süre (tick)",initial:"1000",max_length:10}],can_close_with_escape:1b,pause:0b,actions:[{label:"Ekle",action:{type:"minecraft:dynamic/run_command",template:"/function custom_admin:add/action_weather {id:\"$(act_id)\",weather:\"$(v1)\",duration:\"$(v2)\",player:\"$(act_pl)\"}"}}]}
$data modify storage mc:dialog ui.inputs[0].initial set value "$(naid)"
$data modify storage mc:dialog ui.inputs[1].initial set value "$(napl)"
function glc_menu:handler/dialog/open with storage mc:dialog
