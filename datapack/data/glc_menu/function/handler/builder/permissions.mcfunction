scoreboard players set @s gulce_load.dialog 20
function glc_menu:handler/dialog/loading
execute store result score #pc gulce_id run data get storage mc:handler data.permissions
execute if score #pc gulce_id matches 0 run function glc_menu:handler/builder/perm_empty
execute if score #pc gulce_id matches 0 run return 0
data modify storage mc:dialog ui set value {type:"minecraft:multi_action",title:{text:"📋 İzin Listesi",color:"aqua",bold:true},body:{type:"minecraft:plain_message",contents:"§7Bir izin seçin:"},can_close_with_escape:1b,pause:0b,actions:[]}
data modify storage mc:dialog temp.plist set from storage mc:handler data.permissions
function glc_menu:handler/builder/perm_loop
data modify storage mc:dialog ui.actions append value {label:"◀️ Geri",action:{type:"minecraft:run_command",command:"/trigger gulce_menu set 1"}}
function glc_menu:handler/dialog/open with storage mc:dialog
