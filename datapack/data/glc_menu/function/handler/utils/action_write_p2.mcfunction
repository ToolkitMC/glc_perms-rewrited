# MACRO — {spid, pk2, pv2}
$data modify storage mc:handler data.actions[{id:"$(spid)"}].params.$(pk2) set value "$(pv2)"
