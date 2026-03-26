# exec_action.required_permission'ı okuyup check makrosunu çağır
# gulce_perm önce 1 (izin var sayılır), check başarısız olursa 0 yapar
scoreboard players set @s gulce_perm 1
function custom_admin:execute/perm/check_action_run with storage mc:_ temp.exec_action
