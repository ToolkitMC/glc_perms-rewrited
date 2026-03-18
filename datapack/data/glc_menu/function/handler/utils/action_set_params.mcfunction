# MACRO — {id, pk1, pv1, pk2, pv2}
$execute unless data storage mc:handler data.actions[{id:"$(id)"}].params run data modify storage mc:handler data.actions[{id:"$(id)"}].params set value {}
$data modify storage mc:_ temp.spid set value "$(id)"
$data modify storage mc:_ temp.pk1 set value "$(pk1)"
$data modify storage mc:_ temp.pv1 set value "$(pv1)"
$data modify storage mc:_ temp.pk2 set value "$(pk2)"
$data modify storage mc:_ temp.pv2 set value "$(pv2)"
execute unless data storage mc:_ temp{pk1:""} run function glc_menu:handler/utils/action_write_p1 with storage mc:_ temp
$tellraw @s ["",{"text":"[GLC] ✅ Parametreler güncellendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
scoreboard players set @s gulce_menu 4
scoreboard players enable @s gulce_menu
