setworldspawn -591 118 796
gamerule doDaylightCycle false
gamerule sendCommandFeedback false
time set noon

scoreboard objectives add game_start dummy
scoreboard objectives add noplayertest dummy
scoreboard objectives add game_mode dummy
scoreboard objectives add vote_count dummy


# 什么垃圾
scoreboard objectives add ljsort_count dummy {"text":"什么垃圾人数"}
scoreboard objectives add ljsort_join dummy
scoreboard objectives add ljsortpoints dummy {"text":"得分"}
scoreboard objectives add ljsort_showed dummy {"text":"什么垃圾建筑团队加入"}
scoreboard objectives add ljsort_max dummy {"text":"什么垃圾分数线"}
scoreboard objectives add ljsort_spectate trigger {"text":"什么垃圾观战开关"}
team add ljsort_black {"text":"黑色垃圾队"}
team add ljsort_white {"text":"白色垃圾队"}
team modify ljsort_black color black
team modify ljsort_white color white



tellraw @a ["",{"text":"竹萌地图制作组","color":"green","bold":true},{"text":" 《垃圾分类》游戏数据包加载成功！"}]