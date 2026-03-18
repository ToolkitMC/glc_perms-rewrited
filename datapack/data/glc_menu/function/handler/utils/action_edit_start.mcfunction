# MAKRO — {id}
scoreboard players set @s gulce_load.dialog 20
function glc_menu:handler/dialog/loading
$data modify storage mc:dialog temp.ea_type set from storage mc:handler data.actions[{id:"$(id)"}].type
$data modify storage mc:dialog temp.ea_player set from storage mc:handler data.actions[{id:"$(id)"}].player
$data modify storage mc:dialog temp.eaid set value "$(id)"
function glc_menu:handler/builder/action_edit_form with storage mc:dialog temp
