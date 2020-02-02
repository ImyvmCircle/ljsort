scoreboard players add ljsort game_mode 1
execute if score ljsort game_mode matches 1 run setblock ~ ~ ~ minecraft:air
execute if score ljsort game_mode matches 1 run setblock ~ ~ ~ minecraft:oak_wall_sign[facing=south]{Text1:"[{\"text\":\"右击更改模式\",\"bold\":true}]",Text2:"[{\"text\":\" \"}]",Text3:"[{\"text\":\"↓↓目前模式↓↓\"}]",Text4:"[{\"text\":\"简单模式\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function ljsort:ljsort_modechange\"}}]"} replace

execute if score ljsort game_mode matches 2 run setblock ~ ~ ~ minecraft:air
execute if score ljsort game_mode matches 2 run setblock ~ ~ ~ minecraft:oak_wall_sign[facing=south]{Text1:"[{\"text\":\"右击更改模式\",\"bold\":true}]",Text2:"[{\"text\":\" \"}]",Text3:"[{\"text\":\"↓↓目前模式↓↓\"}]",Text4:"[{\"text\":\"困难模式\",\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function ljsort:ljsort_modechange\"}}]"} replace

execute if score ljsort game_mode matches 3.. run setblock ~ ~ ~ minecraft:air
execute if score ljsort game_mode matches 3.. run setblock ~ ~ ~ minecraft:oak_wall_sign[facing=south]{Text1:"[{\"text\":\"右击更改模式\",\"bold\":true}]",Text2:"[{\"text\":\" \"}]",Text3:"[{\"text\":\"↓↓目前模式↓↓\"}]",Text4:"[{\"text\":\"简单模式\",\"color\":\"dark_green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function ljsort:ljsort_modechange\"}}]"} replace
execute if score ljsort game_mode matches 3.. run scoreboard players set ljsort game_mode 1