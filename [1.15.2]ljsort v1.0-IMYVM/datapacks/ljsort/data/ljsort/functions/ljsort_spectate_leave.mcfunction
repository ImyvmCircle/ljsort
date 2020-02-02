tp @s -591 117 795
gamemode adventure @s
scoreboard players reset @s ljsort_spectate
tellraw @a[scores={ljsort_join=1}] ["", {"text":"["},{"text":"什么垃圾","color":"gray"},{"text":"] "},{"selector":"@s","color":"green"},{"text":"离开了观战! "}]