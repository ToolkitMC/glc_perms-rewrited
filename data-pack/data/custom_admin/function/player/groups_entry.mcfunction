# (MAKRO) — {id:"...", name:"...", level:..., members:[{player:"..."},...], permissions:[...]}
# @s'in bu gruptaki üyeliğini kontrol et - selector ile üye listesi karşılaştırması mümkün değil
# Bunun yerine: @s gulce_group skoru > 0 ise grup üyesidir, ama hangi grup bilinmez
# Daha doğru yol: members'da @s'in adı aranabilir değil makro ile
# Tüm grupları listele, skoru > 0 ise üye olduğu bilinir
$execute if score @s gulce_group matches 1.. run tellraw @s ["",{"text":"  ▸ ","color":"dark_gray"},{"text":"$(name)","color":"light_purple"},{"text":" (","color":"dark_gray"},{"text":"$(id)","color":"yellow"},{"text":")","color":"dark_gray"}]
