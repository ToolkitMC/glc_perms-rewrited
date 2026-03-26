execute unless entity @s[type=minecraft:player,tag=gulce_admin] at @s run return 0

item replace entity @s weapon.mainhand with minecraft:carrot_on_a_stick[minecraft:custom_data={gulceMenu:1b},minecraft:unbreakable={},minecraft:custom_name='{"text":"GULCE Menü","color":"yellow","italic":false}',minecraft:item_model="minecraft:compass"]
