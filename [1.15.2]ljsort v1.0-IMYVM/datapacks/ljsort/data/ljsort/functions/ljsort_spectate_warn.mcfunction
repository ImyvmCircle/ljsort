title @s title [{"text":"警告","color":"red"}]
title @s subtitle [{"text":"你不可以离开游戏区域！"}]
tellraw @s [{"text":">>>>点击此处退出观战<<<<","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ljsort_spectate"}}]
tp @s -592 76 797