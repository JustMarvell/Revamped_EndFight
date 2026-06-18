# Phase 4: Dragon returns, dual attacks, escalating speed
scoreboard players set @s trueEnding_bigphase 4

# Kill any leftover wave mobs and portal marker
kill @e[tag=trueEnding_wave_mob]
kill @e[type=marker,tag=trueEnding_waveportal]
kill @e[type=marker,tag=trueEnding_shadowclone]

# Announce
title @a[distance=..256] title {"text":"LET'S SETTLE THIS!","color":"dark_red","bold":true}
title @a[distance=..256] subtitle {"text":"YOU CHOSE THE WRONG DRAGON!","color":"red","bold":true}
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] 0 80 0 10 0.6
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] 0 80 0 10 0.4
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] 0 80 0 10 0.9
particle explosion_emitter 0 80 0 0 0 0 0 5 force @a[distance=..256]
particle dragon_breath 0 80 0 8 8 8 0.1 500 force @a[distance=..256]

# Restore dragon to fight position, re-enable AI
data modify entity @s Invulnerable set value 0b
data modify entity @s NoAI set value 0b
tag @s remove trueEnding_inattack
tp @s 0 100 0

# Reset attack timers
scoreboard players set @s trueEnding_attacktimer 0
scoreboard players set @s trueEnding_attacktimer2 0
