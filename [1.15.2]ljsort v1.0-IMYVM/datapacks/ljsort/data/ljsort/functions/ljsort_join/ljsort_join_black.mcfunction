team join ljsort_black @s
scoreboard players set @s ljsort_join 1
function ljsort:ljsort_join/ljsort_join_count
tellraw @a[predicate=ljsort:ljsort_lobby] ["",{"selector":"@s","color":"gray"},{"text":"加入了黑色垃圾队! ("},{"score":{"name":"ljsort_black","objective":"ljsort_count"},"color":"gray"},{"text":"/"},{"score":{"name":"ljsort_white","objective":"ljsort_count"},"color":"white"},{"text":")"}]
