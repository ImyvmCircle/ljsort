execute unless entity @e[type=area_effect_cloud,tag=ljsort,tag=ljsort_countdowntimer] run summon minecraft:area_effect_cloud -595 117 789 {Duration:2440,Tags:["ljsort_countdowntimer","ljsort"],CustomName:"{\"text\":\"什么垃圾准备区倒计时\",\"color\":\"gray\"}"}

execute store result score ljsort_total ljsort_count if entity @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}]

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:20}] run tellraw @a ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] 2分钟后游戏开始"}]

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1280}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 为了维系服务器玩家赖以生存的环境"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1340}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 服务器大力推广垃圾分类回收制度"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1400}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 将垃圾分为干垃圾（黑色）、湿垃圾（褐色）、有害垃圾（红色）和可回收物（蓝色）四类"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1460}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 在下水道、地图中心以及道路上可以拾取无良市民乱扔的垃圾"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1520}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 正确地将垃圾放入本方对应的垃圾桶，可以获得5分和对应的增益效果"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1580}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 错误投递将扣除2分，且不会获得效果"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1640}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 最先达到指定分数的队伍获胜"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1700}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 你手里的究竟是什么垃圾"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1760}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 谁才是真正的垃圾分类小能手？"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1820}] run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] [背景介绍] 马上进行的比赛会告诉我们答案"}]

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:1860}] run tellraw @a ["",{"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] 30秒后游戏开始"}]

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2220}] run tellraw @a ["",{"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] 10秒后游戏开始"}]

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2320}] run title @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] title ["",{"text":"5","color":"red"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2320}] at @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] run playsound minecraft:block.note_block.chime block @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ~ ~ ~ 1

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2340}] run title @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] title ["",{"text":"4","color":"red"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2340}] at @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] run playsound minecraft:block.note_block.chime block @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ~ ~ ~ 1

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2360}] run title @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] title ["",{"text":"3","color":"yellow"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2360}] at @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] run playsound minecraft:block.note_block.chime block @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ~ ~ ~ 1

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2380}] run title @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] title ["",{"text":"2","color":"yellow"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2380}] at @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] run playsound minecraft:block.note_block.chime block @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ~ ~ ~ 1

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2400}] run title @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] title ["",{"text":"1","color":"gray"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2400}] at @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] run playsound minecraft:block.note_block.chime block @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ~ ~ ~ 1

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2420}] if score ljsort_total ljsort_count matches ..1 run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["",{"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] 人数不足2人，无法开始"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2420}] if score ljsort_total ljsort_count matches ..1 run function ljsort:ljsort_reset

execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2420}] if score ljsort_teams ljsort_count matches ..1 run tellraw @a[predicate=ljsort:ljsort_lobby,scores={ljsort_join=1}] ["",{"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] 队伍不足2队，无法开始"}]
execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2420}] if score ljsort_teams ljsort_count matches ..1 run function ljsort:ljsort_reset


execute if entity @e[type=area_effect_cloud,tag=ljsort_countdowntimer,nbt={Age:2420}] if score ljsort_total ljsort_count matches 2.. if score ljsort_teams ljsort_count matches 2.. run function ljsort:ljsort_begin
