scoreboard players add 白色垃圾队 ljsortpoints 5
effect give @a[team=ljsort_white] minecraft:speed 3 1
tellraw @a[scores={ljsort_join=1}] ["",{"selector":"@p"}, {"text":" 正确","color":"green"},{"text":"地向 白方垃圾桶 投递了一个 干垃圾"}]
kill @s