scoreboard players add 黑色垃圾队 ljsortpoints 5
effect give @a[team=ljsort_black] minecraft:speed 3 1
tellraw @a[scores={ljsort_join=1}] ["",{"selector":"@p"}, {"text":" 正确","color":"green"},{"text":"地向 黑方垃圾桶 投递了一个 干垃圾"}]
kill @s