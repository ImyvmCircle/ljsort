tellraw @a[predicate=ljsort:ljsort_playground] ["",{"text":"----------什么垃圾游戏结束----------","color":"white"}] 
execute if score 黑色垃圾队 ljsortpoints >= ljsort_black ljsort_max run tellraw @a[predicate=ljsort:ljsort_playground] ["",{"text":"黑色垃圾队","color":"black"},{"text":"获胜！","color":"gold"}]
execute if score 白色垃圾队 ljsortpoints >= ljsort_white ljsort_max run tellraw @a[predicate=ljsort:ljsort_playground] ["",{"text":"白色垃圾队","color":"white"},{"text":"获胜！","color":"gold"}]
execute if score 黑色垃圾队 ljsortpoints >= ljsort_black ljsort_max run tellraw @a[predicate=ljsort:ljsort_playground] ["",{"text":"获胜: "},{"selector":"@a[team=ljsort_black,predicate=ljsort:ljsort_playground]","color":"dark_green"}] 
execute if score 白色垃圾队 ljsortpoints >= ljsort_white ljsort_max run tellraw @a[predicate=ljsort:ljsort_playground] ["",{"text":"获胜: "},{"selector":"@a[team=ljsort_white,predicate=ljsort:ljsort_playground]","color":"dark_green"}] 
tellraw @a[predicate=ljsort:ljsort_playground] ["",{"text":"----------什么垃圾游戏结束----------","color":"white"}] 

function ljsort:ljsort_reset