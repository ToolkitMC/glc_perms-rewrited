# Genel tik sayacı (0-599 arası döner)
scoreboard players add #timer gulce_timer 1
execute if score #timer gulce_timer matches 600.. run scoreboard players set #timer gulce_timer 0
