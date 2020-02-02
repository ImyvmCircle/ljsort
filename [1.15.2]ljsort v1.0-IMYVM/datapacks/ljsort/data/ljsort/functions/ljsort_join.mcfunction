execute unless score ljsort game_start matches 1 store result score ljsort_total ljsort_count if entity @a[x=-595,y=117,z=789,dx=9,dy=2,dz=12]

execute unless score ljsort game_start matches 1 if score ljsort_total ljsort_count matches 2.. run scoreboard players set ljsort_prepare game_start 1 

advancement revoke @s only ljsort:ljsort_join