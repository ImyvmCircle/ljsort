scoreboard players add 白色垃圾队 ljsortpoints 5
give @a[team=ljsort_white] minecraft:ender_pearl 2
tellraw @a[scores={ljsort_join=1}] ["",{"selector":"@p"}, {"text":" 正确","color":"green"},{"text":"地向 白方垃圾桶 投递了一个 可回收物"}]
kill @s