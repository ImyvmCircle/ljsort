summon minecraft:squid ~ ~ ~ {Silent:1b,NoAI:1b,Invulnerable:1b,Tags:["ljsort","lj_5s"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:216000,ShowParticles:0b}],DeathLootTable:"ljsort:lj"}

kill @e[type=squid,tag=lj_5s]

title @a[team=ljsort_black] actionbar ["",{"text":"垃圾来了！垃圾来了！","color":"yellow"}]
title @a[team=ljsort_white] actionbar ["",{"text":"垃圾来了！垃圾来了！","color":"yellow"}]