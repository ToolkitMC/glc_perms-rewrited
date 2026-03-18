# MAKRO — {id}
scoreboard players set @s gulce_load.dialog 20
function glc_menu:handler/dialog/loading
$data modify storage mc:dialog temp.ep_pl set from storage mc:handler data.permissions[{id:"$(id)"}].player
$data modify storage mc:dialog temp.ep_perm set from storage mc:handler data.permissions[{id:"$(id)"}].permission
$data modify storage mc:dialog temp.ep_lvl set from storage mc:handler data.permissions[{id:"$(id)"}].level
$data modify storage mc:dialog temp.eid set value "$(id)"
function glc_menu:handler/builder/perm_edit_form with storage mc:dialog temp
