# MAKRO — {id, type, player}
$data modify storage mc:dialog temp.naid set value "$(id)"
$data modify storage mc:dialog temp.natype set value "$(type)"
$data modify storage mc:dialog temp.napl set value "$(player)"
# 1. Önce loading başlat
scoreboard players set @s gulce_load.dialog 20
function glc_menu:handler/dialog/loading
# 2. Tip bazlı forma git (ui'yi yazar, open çağırır — closed.glc kaldırır)
execute if data storage mc:dialog temp{natype:"message"} run function glc_menu:handler/builder/add_form_message with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"command"} run function glc_menu:handler/builder/add_form_command with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"teleport"} run function glc_menu:handler/builder/add_form_teleport with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"effect"} run function glc_menu:handler/builder/add_form_effect with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"gamemode"} run function glc_menu:handler/builder/add_form_gamemode with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"sound"} run function glc_menu:handler/builder/add_form_sound with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"title"} run function glc_menu:handler/builder/add_form_title with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"give"} run function glc_menu:handler/builder/add_form_give with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"clear"} run function glc_menu:handler/builder/add_form_clear with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"summon"} run function glc_menu:handler/builder/add_form_summon with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"particle"} run function glc_menu:handler/builder/add_form_particle with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"function"} run function glc_menu:handler/builder/add_form_function with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"weather"} run function glc_menu:handler/builder/add_form_weather with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"music"} run function glc_menu:handler/builder/add_form_music with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"explosion"} run function glc_menu:handler/builder/add_form_explosion with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"multi_command"} run function glc_menu:handler/builder/add_form_multi_command with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"multi_function"} run function glc_menu:handler/builder/add_form_multi_function with storage mc:dialog temp
execute if data storage mc:dialog temp{natype:"multi_action_chain"} run function glc_menu:handler/builder/add_form_multi_action with storage mc:dialog temp
