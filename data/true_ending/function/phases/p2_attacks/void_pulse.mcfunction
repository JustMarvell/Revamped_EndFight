# Void Pulse: dragon unleashes a shockwave of void energy
tag @s add trueEnding_inattack
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] 0 80 0 8 0.5
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] 0 80 0 8 0.6
title @a[distance=..256] actionbar {"text":"\"Feel the void that birthed me, insect!\"","color":"dark_purple","bold":true,"italic":true}
particle explosion_emitter 0 75 0 0 0 0 0 1 force @a[distance=..256]
particle portal 0 75 0 8 4 8 0.02 400 force @a[distance=..256]
# Apply effects to all players in range
effect give @a[distance=..256,gamemode=!spectator,gamemode=!creative] blindness 3 0 true
effect give @a[distance=..256,gamemode=!spectator,gamemode=!creative] levitation 2 1 true
effect give @a[distance=..60,gamemode=!spectator,gamemode=!creative] nausea 4 0 true
# Deal damage to players close to center
damage @p[distance=..20,gamemode=!spectator,gamemode=!creative] 8 true_ending:mob_attack_pierce_shield by @e[type=ender_dragon,limit=1]
damage @p[distance=20..40,gamemode=!spectator,gamemode=!creative] 5 true_ending:mob_attack by @e[type=ender_dragon,limit=1]
tag @s remove trueEnding_inattack
