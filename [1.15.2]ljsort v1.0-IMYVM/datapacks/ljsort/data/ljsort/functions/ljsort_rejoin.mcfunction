# 掉线者重新加入
clear @s[team=ljsort_black]
clear @s[team=ljsort_white]

spawnpoint @s[team=ljsort_black] -542 67 792
spawnpoint @s[team=ljsort_white] -640 67 802

tp @s[team=ljsort_black] -542 67 792
tp @s[team=ljsort_white] -640 67 802 

execute if entity @s[team=ljsort_black] run tellraw @a[scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] "},{"selector":"@s","color":"green"},{"text":"重新加入了游戏! "}]
execute if entity @s[team=ljsort_white] run tellraw @a[scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] "},{"selector":"@s","color":"green"},{"text":"重新加入了游戏! "}]

# 观察者模式
execute if entity @a[predicate=ljsort:ljsort_playground,gamemode=!spectator] as @s[team=!ljsort_black,team=!ljsort_white] run function ljsort:ljsort_spectate

execute unless entity @a[predicate=ljsort:ljsort_playground,gamemode=!spectator] as @s[team=!ljsort_black,team=!ljsort_white] run tellraw @s ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] "},{"text":"场地内已无玩家，无法加入观战，请等待1分钟游戏自动结束！"}]