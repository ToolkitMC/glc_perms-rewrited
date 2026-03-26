# Admin Kafası Ver — @s oyuncusuna kendi kafasını verir (loot table üzerinden)
loot give @s loot custom_admin:admin_head

data modify storage mc:_ temp.playerName set from entity @s SelectedItem.components."minecraft:profile".name

clear @s minecraft:player_head[minecraft:profile] 64