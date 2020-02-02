# 实时统计人数
execute store result score ljsort_total ljsort_count if entity @a[predicate=ljsort:ljsort_playground,scores={ljsort_join=1},gamemode=!spectator]

# 生成垃圾
execute unless entity @e[type=area_effect_cloud,tag=ljsort,tag=ljsort_createlj_5s] run summon minecraft:area_effect_cloud -595 117 789 {Duration:310,Tags:["ljsort_createlj_5s","ljsort"],CustomName:"{\"text\":\"垃圾15s倒计时\",\"color\":\"gray\"}"}

execute unless entity @e[type=area_effect_cloud,tag=ljsort,tag=ljsort_createlj_8s] run summon minecraft:area_effect_cloud -595 117 789 {Duration:610,Tags:["ljsort_createlj_8s","ljsort"],CustomName:"{\"text\":\"垃圾30s倒计时\",\"color\":\"gray\"}"}

execute if entity @e[type=area_effect_cloud,tag=ljsort_createlj_5s,nbt={Age:300}] positioned -591 66 798 run function ljsort:ljsort_createlj_5s

execute if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:600}] positioned -591 66 777 run function ljsort:ljsort_createlj_8s
execute if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:600}] positioned -591 66 820 run function ljsort:ljsort_createlj_8s
execute if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:600}] at @e[type=zombie,tag=ljsort] run function ljsort:ljsort_createlj_8s
execute if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:600}] at @e[type=bat,tag=ljsort] run function ljsort:ljsort_createlj_8s

# 根据人数适当增加垃圾生成
execute if score ljsort_total ljsort_count matches 4.. if entity @e[type=area_effect_cloud,tag=ljsort_createlj_5s,nbt={Age:150}] positioned -591 66 798 run function ljsort:ljsort_createlj_5s

execute if score ljsort_total ljsort_count matches 4.. if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:300}] positioned -591 66 777 run function ljsort:ljsort_createlj_8s
execute if score ljsort_total ljsort_count matches 4.. if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:300}] positioned -591 66 820 run function ljsort:ljsort_createlj_8s
execute if score ljsort_total ljsort_count matches 4.. if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:300}] at @e[type=zombie,tag=ljsort] run function ljsort:ljsort_createlj_8s
execute if score ljsort_total ljsort_count matches 4.. if entity @e[type=area_effect_cloud,tag=ljsort_createlj_8s,nbt={Age:300}] at @e[type=bat,tag=ljsort] run function ljsort:ljsort_createlj_8s

# 根据模式修改难度
execute if score ljsort game_mode matches 1 as @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:2}}}] run data merge entity @s {Item:{id:gray_concrete}}

execute if score ljsort game_mode matches 1 as @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:1}}}] run data merge entity @s {Item:{id:brown_concrete}}

execute if score ljsort game_mode matches 1 as @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:4}}}] run data merge entity @s {Item:{id:red_concrete}}

execute if score ljsort game_mode matches 1 as @e[type=item,predicate=ljsort:ljsort_playground,nbt={Item:{tag:{HideFlags:8}}}] run data merge entity @s {Item:{id:blue_concrete}}

# 无良市民开车
execute as @e[type=minecraft:minecart,x=-540,y=64,z=825,dx=-100,dy=1,dz=10,tag=ljsort_toS] run tag @s add ljsort_StoN
execute as @e[type=minecraft:minecart,tag=ljsort_StoN] run tag @s remove ljsort_toS
execute as @e[type=minecraft:minecart,tag=ljsort_StoN] run tag @s add ljsort_toN
execute as @e[type=minecraft:minecart,tag=ljsort_StoN] at @s run data merge entity @e[type=zombie,limit=1,sort=nearest] {Rotation:[180f]}
execute as @e[type=minecraft:minecart,tag=ljsort_StoN] run tag @s remove ljsort_StoN

execute as @e[type=minecraft:minecart,x=-540,y=64,z=769,dx=-100,dy=1,dz=-10,tag=ljsort_toN] run tag @s add ljsort_NtoS
execute as @e[type=minecraft:minecart,tag=ljsort_NtoS] run tag @s remove ljsort_toN
execute as @e[type=minecraft:minecart,tag=ljsort_NtoS] run tag @s add ljsort_toS
execute as @e[type=minecraft:minecart,tag=ljsort_NtoS] at @s run data merge entity @e[type=zombie,limit=1,sort=nearest] {Rotation:[0f]}
execute as @e[type=minecraft:minecart,tag=ljsort_NtoS] run tag @s remove ljsort_NtoS

execute as @e[type=minecraft:minecart,tag=ljsort_toS] at @s run tp @s ~ ~ ~0.2
execute as @e[type=minecraft:minecart,tag=ljsort_toN] at @s run tp @s ~ ~ ~-0.2

# 下水道加速
effect give @a[x=-540,y=57,z=770,dx=-100,dy=2,dz=60,scores={ljsort_join=1},gamemode=!spectator] minecraft:speed 1 2

# 检测垃圾 黑色方 HideFlags 2:干垃圾 1:湿垃圾 4:有害垃圾 8:可回收物
execute positioned -552 76 777 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:2}}}] run function ljsort:ljsort_black/ljsort_resi_y
execute positioned -552 76 777 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:2}}}] run function ljsort:ljsort_black/ljsort_resi_n

execute positioned -552 76 788 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:1}}}] run function ljsort:ljsort_black/ljsort_house_y
execute positioned -552 76 788 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:1}}}] run function ljsort:ljsort_black/ljsort_house_n

execute positioned -552 76 799 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:4}}}] run function ljsort:ljsort_black/ljsort_hazard_y
execute positioned -552 76 799 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:4}}}] run function ljsort:ljsort_black/ljsort_hazard_n

execute positioned -552 76 810 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:8}}}] run function ljsort:ljsort_black/ljsort_recy_y
execute positioned -552 76 810 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:8}}}] run function ljsort:ljsort_black/ljsort_recy_n

# 检测垃圾 白色方
execute positioned -630 76 817 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:2}}}] run function ljsort:ljsort_white/ljsort_resi_y
execute positioned -630 76 817 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:2}}}] run function ljsort:ljsort_white/ljsort_resi_n

execute positioned -630 76 806 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:1}}}] run function ljsort:ljsort_white/ljsort_house_y
execute positioned -630 76 806 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:1}}}] run function ljsort:ljsort_white/ljsort_house_n

execute positioned -630 76 795 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:4}}}] run function ljsort:ljsort_white/ljsort_hazard_y
execute positioned -630 76 795 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:4}}}] run function ljsort:ljsort_white/ljsort_hazard_n

execute positioned -630 76 784 as @e[type=item,distance=..2,nbt={Item:{tag:{HideFlags:8}}}] run function ljsort:ljsort_white/ljsort_recy_y
execute positioned -630 76 784 as @e[type=item,distance=..2,nbt=!{Item:{tag:{HideFlags:8}}}] run function ljsort:ljsort_white/ljsort_recy_n

# bossbar实时更新
execute store result bossbar ljsort:white_points value run scoreboard players get 白色垃圾队 ljsortpoints
execute store result bossbar ljsort:black_points value run scoreboard players get 黑色垃圾队 ljsortpoints
bossbar set ljsort:white_points name [{"text":"白色垃圾队分数 "},{"score":{"name":"白色垃圾队","objective":"ljsortpoints"},"color":"green"},{"text":"/"},{"score":{"name":"ljsort_white","objective":"ljsort_max"},"color":"green"}]
bossbar set ljsort:black_points name [{"text":"黑色垃圾队分数 "},{"score":{"name":"黑色垃圾队","objective":"ljsortpoints"},"color":"green"},{"text":"/"},{"score":{"name":"ljsort_black","objective":"ljsort_max"},"color":"green"}]

# 检测分数
execute if score 黑色垃圾队 ljsortpoints >= ljsort_black ljsort_max run title @a[predicate=ljsort:ljsort_playground] title ["",{"text":"黑色垃圾队","color":"black"},{"text":"获胜！","color":"gold"}]
execute if score 黑色垃圾队 ljsortpoints >= ljsort_black ljsort_max run function ljsort:ljsort_outcome
execute if score 白色垃圾队 ljsortpoints >= ljsort_white ljsort_max run title @a[predicate=ljsort:ljsort_playground] title ["",{"text":"白色垃圾队","color":"white"},{"text":"获胜！","color":"gold"}]
execute if score 白色垃圾队 ljsortpoints >= ljsort_white ljsort_max run function ljsort:ljsort_outcome

# 观战离开游戏范围审查
execute as @a[gamemode=spectator,scores={ljsort_join=1},predicate=!ljsort:ljsort_playground] run function ljsort:ljsort_spectate_warn

# 检测观战离开
execute as @a[gamemode=spectator,scores={ljsort_join=1,ljsort_spectate=1..}] run function ljsort:ljsort_spectate_leave

#无人游戏重置
execute unless entity @a[predicate=ljsort:ljsort_playground] run scoreboard players add ljsort noplayertest 1
execute if score ljsort noplayertest matches 1200 run function ljsort:ljsort_reset