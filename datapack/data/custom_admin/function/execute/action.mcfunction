# MAKRO — {id}
$data modify storage mc:_ temp.exec set from storage mc:handler data.actions[{id:"$(id)"}]
execute unless data storage mc:_ temp.exec run tellraw @s ["",{"text":"[GULCE] ","color":"red"},{"text":"Eylem bulunamadı","color":"red"}]
execute unless data storage mc:_ temp.exec run return 0
execute if data storage mc:_ temp.exec.params run data modify storage mc:_ temp.params set from storage mc:_ temp.exec.params
execute unless data storage mc:_ temp.exec.params run data modify storage mc:_ temp.params set value {}
data modify storage mc:_ temp.ep set from storage mc:_ temp.exec.player
execute if data storage mc:_ temp.exec{type:"message"} run function custom_admin:execute/types/message
execute if data storage mc:_ temp.exec{type:"command"} run function custom_admin:execute/types/command
execute if data storage mc:_ temp.exec{type:"teleport"} run function custom_admin:execute/types/teleport
execute if data storage mc:_ temp.exec{type:"effect"} run function custom_admin:execute/types/effect
execute if data storage mc:_ temp.exec{type:"gamemode"} run function custom_admin:execute/types/gamemode
execute if data storage mc:_ temp.exec{type:"sound"} run function custom_admin:execute/types/sound
execute if data storage mc:_ temp.exec{type:"title"} run function custom_admin:execute/types/title
execute if data storage mc:_ temp.exec{type:"give"} run function custom_admin:execute/types/give
execute if data storage mc:_ temp.exec{type:"clear"} run function custom_admin:execute/types/clear
execute if data storage mc:_ temp.exec{type:"summon"} run function custom_admin:execute/types/summon
execute if data storage mc:_ temp.exec{type:"particle"} run function custom_admin:execute/types/particle
execute if data storage mc:_ temp.exec{type:"function"} run function custom_admin:execute/types/fn_call
execute if data storage mc:_ temp.exec{type:"weather"} run function custom_admin:execute/types/weather
execute if data storage mc:_ temp.exec{type:"music"} run function custom_admin:execute/types/music
execute if data storage mc:_ temp.exec{type:"explosion"} run function custom_admin:execute/types/explosion
execute if data storage mc:_ temp.exec{type:"multi_command"} run function custom_admin:execute/types/multi_command
execute if data storage mc:_ temp.exec{type:"multi_function"} run function custom_admin:execute/types/multi_function
execute if data storage mc:_ temp.exec{type:"multi_action_chain"} run function custom_admin:execute/types/multi_action_chain
execute if data storage mc:_ temp.exec{type:"kit"} run function custom_admin:execute/types/kit
function custom_admin:log/add_from_action with storage mc:_ temp
$tellraw @s ["",{"text":"[GULCE] OK: ","color":"green"},{"text":"$(id)","color":"yellow"}]
