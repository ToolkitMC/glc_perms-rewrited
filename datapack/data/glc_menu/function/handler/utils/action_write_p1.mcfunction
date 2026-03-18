# MACRO — {spid, pk1, pv1, pk2, pv2}
$data modify storage mc:handler data.actions[{id:"$(spid)"}].params.$(pk1) set value "$(pv1)"
execute unless data storage mc:_ temp{pk2:""} run function glc_menu:handler/utils/action_write_p2 with storage mc:_ temp
