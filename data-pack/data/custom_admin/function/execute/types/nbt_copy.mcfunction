data modify storage mc:_ temp.nbt_from_ns set from storage mc:_ temp.params.from_ns
data modify storage mc:_ temp.nbt_from_path set from storage mc:_ temp.params.from_path
data modify storage mc:_ temp.nbt_to_ns set from storage mc:_ temp.params.to_ns
data modify storage mc:_ temp.nbt_to_path set from storage mc:_ temp.params.to_path
function custom_admin:execute/types/nbt_copy_run with storage mc:_ temp
