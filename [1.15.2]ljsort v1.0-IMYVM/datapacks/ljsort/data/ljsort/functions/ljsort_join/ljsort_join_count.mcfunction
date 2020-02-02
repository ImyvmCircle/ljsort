scoreboard players set ljsort_black ljsort_count 0
scoreboard players set ljsort_white ljsort_count 0
scoreboard players set ljsort_teams ljsort_count 0

scoreboard players operation ljsort_black ljsort_count += @a[predicate=ljsort:ljsort_lobby,team=ljsort_black] ljsort_join
scoreboard players operation ljsort_white ljsort_count += @a[predicate=ljsort:ljsort_lobby,team=ljsort_white] ljsort_join


scoreboard players operation ljsort_teams ljsort_count += @a[predicate=ljsort:ljsort_lobby,team=ljsort_black,limit=1] ljsort_join
scoreboard players operation ljsort_teams ljsort_count += @a[predicate=ljsort:ljsort_lobby,team=ljsort_white,limit=1] ljsort_join
