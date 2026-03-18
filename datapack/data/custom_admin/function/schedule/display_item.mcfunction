# MACRO — {schedule_id, action_id, remaining, delay, player, repeat}
$tellraw @s ["",{"text":" #$(schedule_id) ","color":"yellow","bold":true},{"text":"$(action_id)","color":"aqua"},{"text":" ($(remaining)/$(delay)t)","color":"gray"}]
