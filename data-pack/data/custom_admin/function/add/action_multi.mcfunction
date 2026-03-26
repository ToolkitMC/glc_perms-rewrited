# Add Action: Multi — coklu eylem zincirleme (MACRO)
# {id:"...", player:"@s", steps:[{type:"message",params:{text:"Hosgeldin!"}},{type:"sound",params:{sound:"entity.player.levelup",volume:"1",pitch:"1"}}]}
# steps icerisindeki her adim kendi player'ini veya multi'nin player'ini kullanir.
$data modify storage mc:handler data.actions append value {id:"$(id)",type:"multi",player:"$(player)",steps:$(steps)}
$tellraw @s ["",{"text":"[GULCE] ","color":"gold","bold":true},{"text":"Coklu eylem eklendi: ","color":"green"},{"text":"$(id)","color":"yellow"}]
