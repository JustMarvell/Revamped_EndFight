tag @s add trueEnding_inattack
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] 0 80 0 10 0.3
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] 0 80 0 10 0.6
title @a[distance=..256] actionbar {"text":"⬇ GRAVITY SLAM ⬇","color":"aqua","bold":true}
particle cloud 0 90 0 0 0 0 0.5 5 force @a[distance=..256]
# Teleport all players toward center island (10 blocks from 0,0)
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run tp @s 0 65 0
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run tp @s 0 65 0
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run tp @s 0 65 0
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative] at @s run tp @s 0 65 0
# Then deal fall-style damage and apply slowness
damage @p[distance=..256,gamemode=!spectator,gamemode=!creative] 10 true_ending:mob_attack_pierce_shield by @e[type=ender_dragon,limit=1]
effect give @a[distance=..256,gamemode=!spectator,gamemode=!creative] slowness 5 2 true
effect give @a[distance=..256,gamemode=!spectator,gamemode=!creative] mining_fatigue 5 1 true
particle explosion_emitter 0 65 0 0 0 0 0 2 force @a[distance=..256]
tag @s remove trueEnding_inattack
