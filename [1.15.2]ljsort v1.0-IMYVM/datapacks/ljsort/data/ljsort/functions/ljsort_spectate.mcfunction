scoreboard players set @s ljsort_join 1
tellraw @a[scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] "},{"selector":"@s","color":"green"},{"text":"加入了观战! "}]
tellraw @s [{"text":">>>>点击此处退出观战<<<<","color":"gold","bold":true,"clickEvent":{"action":"run_command","value":"/trigger ljsort_spectate"}}]
gamemode spectator @s
scoreboard players enable @s ljsort_spectate
tp @s -592 76 797
bossbar set ljsort:black_points players @a[scores={ljsort_join=1}]
bossbar set ljsort:white_points players @a[scores={ljsort_join=1}]