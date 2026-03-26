# Admin Kafası Ver — @s oyuncusuna kendi kafasını verir (loot table üzerinden)
loot give @s loot custom_admin:admin_head

data modify storage mc:_ temp.playerName set from entity @s SelectedItem.components."minecraft:profile".name

tag @s add .temp
function custom_admin:add/action_command {id:"clear",command:"function custom_admin:give/_",player:"@s"}
function custom_admin:schedule/add {action_id:"clear",delay:3,player:"@a[tag=.temp]"}