# (MAKRO) — {id:"...", name:"...", level:..., members:[...], permissions:[...]}
# gulce_group > 0 olan oyuncuya grup listesi göster (en güvenilir pratik yol)
$execute if score @s gulce_group matches 1.. run tellraw @s ["",{"text":"  ▸ ","color":"dark_gray"},{"text":"$(name)","color":"light_purple"},{"text":" (","color":"dark_gray"},{"text":"$(id)","color":"yellow"},{"text":") Sv.","color":"dark_gray"},{"text":"$(level)","color":"gold"}]
