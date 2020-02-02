scoreboard players reset ljsort_prepare game_start
scoreboard players set ljsort_decide game_start 1
scoreboard players set ljsort game_start 1

spawnpoint @a[predicate=ljsort:ljsort_lobby,team=ljsort_black] -542 67 792
spawnpoint @a[predicate=ljsort:ljsort_lobby,team=ljsort_white] -640 67 802


clear @a[team=ljsort_black]
clear @a[team=ljsort_white]


title @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] title ["",{"text":"什么垃圾？","color":"gray"}]
title @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] subtitle ["",{"text":"争作垃圾分类小能手"}]
effect give @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] minecraft:saturation 5 5
effect give @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] minecraft:regeneration 5 1

gamemode adventure @a[team=ljsort_black]
gamemode adventure @a[team=ljsort_white]

tp @a[predicate=ljsort:ljsort_lobby,team=ljsort_black] -542 67 792
tp @a[predicate=ljsort:ljsort_lobby,team=ljsort_white] -640 67 802 

# 清空改模式牌子
setblock -590 118 794 minecraft:air replace
# 清空队伍牌子
setblock -586 118 795 minecraft:air replace
setblock -595 118 795 minecraft:air replace
setblock -586 118 795 minecraft:birch_wall_sign[facing=west]{Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"游戏已开始\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function ljsort:ljsort_rejoin\"}}",Text3:"[{\"text\":\"掉线可右击牌子重进\",\"color\":\"black\"}]",Text4:"[{\"text\":\"或右击加入观战\"}]"} replace 
setblock -595 118 795 minecraft:birch_wall_sign[facing=east]{Text1:"{\"text\":\" \"}",Text2:"{\"text\":\"游戏已开始\",\"color\":\"white\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function ljsort:ljsort_rejoin\"}}",Text3:"[{\"text\":\"掉线可右击牌子重进\",\"color\":\"white\"}]",Text4:"[{\"text\":\"或右击加入观战\"}]"} replace 
#最后一次计算参加人数
function ljsort:ljsort_join/ljsort_join_count

scoreboard players reset * ljsort_max
scoreboard players set ljsort_white ljsort_max 20
scoreboard players operation ljsort_white ljsort_max *= ljsort_white ljsort_count
scoreboard players add ljsort_white ljsort_max 100
scoreboard players set ljsort_black ljsort_max 20
scoreboard players operation ljsort_black ljsort_max *= ljsort_black ljsort_count
scoreboard players add ljsort_black ljsort_max 100
scoreboard players reset * ljsortpoints
scoreboard objectives setdisplay sidebar.team.black ljsortpoints
scoreboard objectives setdisplay sidebar.team.white ljsortpoints

bossbar add ljsort:black_points [{"text":"黑色垃圾队分数 "},{"score":{"name":"黑色垃圾队","objective":"ljsortpoints"},"color":"green"},{"text":"/"},{"score":{"name":"ljsort_black","objective":"ljsort_max"},"color":"green"}]
bossbar set ljsort:black_points color blue
execute store result bossbar ljsort:blue_points max run scoreboard players get ljsort_black ljsort_max
bossbar set ljsort:black_points players @a[scores={ljsort_join=1}]
bossbar add ljsort:white_points [{"text":"白色垃圾队分数 "},{"score":{"name":"白色垃圾队","objective":"ljsortpoints"},"color":"green"},{"text":"/"},{"score":{"name":"ljsort_white","objective":"ljsort_max"},"color":"green"}]
bossbar set ljsort:white_points color white
execute store result bossbar ljsort:red_points max run scoreboard players get ljsort_white ljsort_max
bossbar set ljsort:white_points players @a[scores={ljsort_join=1}]


kill @e[type=minecart,tag=ljsort]
kill @e[type=zombie,tag=ljsort]
kill @e[type=bat,tag=ljsort]

summon minecart -576 64 769 {Invulnerable:1b,Tags:["ljsort","ljsort_toS"],Passengers:[{id:zombie,DeathLootTable:"ljsort:lj",NoAI:1,PersistenceRequired:1,Silent:1b,Tags:["ljsort"],CustomName:"{\"text\":\"无良市民\",\"color\":\"gray\"}",HandItems:[{id:flower_pot,Count:1b},{}],ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:0}}},{id:leather_leggings,Count:1b,tag:{display:{color:0}}},{id:leather_chestplate,Count:1b,tag:{display:{color:16774681}}},{id:player_head,Count:1b,tag:{SkullOwner:"huangwang"}}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}]}

summon minecart -582 64 825 {Invulnerable:1b,Tags:["ljsort","ljsort_toN"],Passengers:[{id:zombie,DeathLootTable:"ljsort:lj",NoAI:1,PersistenceRequired:1,Silent:1b,Tags:["ljsort"],CustomName:"{\"text\":\"无良市民\",\"color\":\"gray\"}",HandItems:[{id:flower_pot,Count:1b},{}],ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:0}}},{id:leather_leggings,Count:1b,tag:{display:{color:0}}},{id:leather_chestplate,Count:1b,tag:{display:{color:16774681}}},{id:player_head,Count:1b,tag:{SkullOwner:"huangwang"}}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}]}

summon minecart -606 64 825 {Invulnerable:1b,Tags:["ljsort","ljsort_toN"],Passengers:[{id:zombie,DeathLootTable:"ljsort:lj",NoAI:1,PersistenceRequired:1,Silent:1b,Tags:["ljsort"],CustomName:"{\"text\":\"无良市民\",\"color\":\"gray\"}",HandItems:[{id:flower_pot,Count:1b},{}],ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:0}}},{id:leather_leggings,Count:1b,tag:{display:{color:0}}},{id:leather_chestplate,Count:1b,tag:{display:{color:16774681}}},{id:player_head,Count:1b,tag:{SkullOwner:"huangwang"}}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}]}

summon minecart -600 64 769 {Invulnerable:1b,Tags:["ljsort","ljsort_toS"],Passengers:[{id:zombie,DeathLootTable:"ljsort:lj",NoAI:1,PersistenceRequired:1,Silent:1b,Tags:["ljsort"],CustomName:"{\"text\":\"无良市民\",\"color\":\"gray\"}",HandItems:[{id:flower_pot,Count:1b},{}],ArmorItems:[{id:leather_boots,Count:1b,tag:{display:{color:0}}},{id:leather_leggings,Count:1b,tag:{display:{color:0}}},{id:leather_chestplate,Count:1b,tag:{display:{color:16774681}}},{id:player_head,Count:1b,tag:{SkullOwner:"huangwang"}}],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f]}]}

# 下水道蝙蝠
summon bat -585 58 772 {Invulnerable:1b,PersistenceRequired:1b,Tags:["ljsort"],DeathLootTable:"ljsort:lj"}
summon bat -597 58 822 {Invulnerable:1b,PersistenceRequired:1b,Tags:["ljsort"],DeathLootTable:"ljsort:lj"}
summon bat -609 58 771 {Invulnerable:1b,PersistenceRequired:1b,Tags:["ljsort"],DeathLootTable:"ljsort:lj"}
summon bat -573 58 823 {Invulnerable:1b,PersistenceRequired:1b,Tags:["ljsort"],DeathLootTable:"ljsort:lj"}