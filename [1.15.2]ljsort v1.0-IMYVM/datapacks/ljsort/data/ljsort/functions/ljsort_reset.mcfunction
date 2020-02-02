clear @a[team=ljsort_black]
clear @a[team=ljsort_white]

spawnpoint @a[predicate=ljsort:ljsort_playground,scores={ljsort_join=1}] 221 97 217

effect give @a[predicate=ljsort:ljsort_playground,scores={ljsort_join=1}] minecraft:saturation 5 5
effect give @a[predicate=ljsort:ljsort_playground,scores={ljsort_join=1}] minecraft:regeneration 5 1

gamemode adventure @a[predicate=ljsort:ljsort_playground,scores={ljsort_join=1}]

tp @a[predicate=ljsort:ljsort_playground,scores={ljsort_join=1}] -591 117 795

scoreboard players reset * ljsortpoints
scoreboard players reset * ljsort_join
scoreboard players reset * ljsort_count
scoreboard players reset * ljsort_showed
scoreboard players reset * ljsort_max
scoreboard players reset * ljsort_spectate
scoreboard players reset ljsort game_start
scoreboard players reset ljsort noplayertest
scoreboard players reset ljsort_decide game_start
scoreboard players reset ljsort_prepare game_start

team empty ljsort_black
team empty ljsort_white

bossbar remove ljsort:black_points
bossbar remove ljsort:white_points

kill @e[tag=ljsort]
kill @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:1}}}]
kill @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:2}}}]
kill @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:4}}}]
kill @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:8}}}]

# 重置模式牌子
setblock -590 118 794 minecraft:oak_wall_sign[facing=south]{Text1:"[{\"text\":\"右击更改模式\",\"bold\":true}]",Text2:"[{\"text\":\" \"}]",Text3:"[{\"text\":\"↓↓目前模式↓↓\"}]",Text4:"[{\"text\":\"简单模式\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function ljsort:ljsort_modechange\"}}]"} replace

scoreboard players set ljsort game_mode 1

# 加入队伍牌子
setblock -586 118 795 minecraft:air replace
setblock -595 118 795 minecraft:air replace
setblock -586 118 795 minecraft:oak_wall_sign[facing=west]{Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"加入黑色垃圾队\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @s[team=!ljsort_black] run function ljsort:ljsort_join/ljsort_join_black\"}}",Text3:"[{\"text\":\"JOIN BLACK\",\"color\":\"black\"}]",Text4:"[\" \"]"} replace 
setblock -595 118 795 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"加入白色垃圾队\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @s[team=!ljsort_white] run function ljsort:ljsort_join/ljsort_join_white\"}}",Text3:"[{\"text\":\"JOIN WHITE\",\"color\":\"white\"}]",Text4:"[\" \"]"} replace 
# 显示队伍成员牌子
setblock -591 118 796 minecraft:oak_wall_sign[facing=north]{Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"右击显示两队成员\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute as @s run function ljsort:ljsort_showteam\"}}",Text3:"[{\"text\":\"Show Team\"}]",Text4:"[\" \"]"} replace