scoreboard players remove 黑色垃圾队 ljsortpoints 2
tellraw @a[scores={ljsort_join=1}] ["",{"selector":"@p"}, {"text":" 错误","color":"red"},{"text":"地向黑方 可回收物 垃圾桶投递了一个垃圾"}]
kill @s