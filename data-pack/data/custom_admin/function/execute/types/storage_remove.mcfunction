data modify storage mc:_ temp.st_ns set from storage mc:_ temp.params.ns
data modify storage mc:_ temp.st_path set from storage mc:_ temp.params.path
function custom_admin:execute/types/storage_remove_run with storage mc:_ temp
