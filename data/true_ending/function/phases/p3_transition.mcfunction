# Phase 3 transition - dragon leaves, mob waves spawn

# Only trigger once
tag @s remove trueEnding_p3ready
scoreboard players set @s trueEnding_bigphase 3

# Announce
title @a[distance=..256] title {"text":"Amusing. Truly.","color":"dark_red","bold":true}
title @a[distance=..256] subtitle {"text":"Then let us see how you fare against my ARMIES.","color":"red","italic":true}
title @a[distance=..256] actionbar {"text":"✦ The dragon vanishes into the void... ✦","color":"dark_gray","italic":true}
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] 0 80 0 10 0.4
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] 0 80 0 10 0.7
particle explosion_emitter 0 80 0 0 0 0 0 3 force @a[distance=..256]

# Make dragon invulnerable and fly it away
data modify entity @s Invulnerable set value 1b
tag @s add trueEnding_inattack
scoreboard players set @s trueEnding_attacktimer 0

# Start with wave 1 after a short delay (handled in p3_main)
scoreboard players set trueEnding_wave trueEnding_storage 1
scoreboard players set trueEnding_wave_mobs trueEnding_storage 0

# Summon a portal marker at 0 64 0 for wave spawning
execute in the_end positioned 0 64 0 run summon marker ~ ~ ~ {Tags:["trueEnding_waveportal"]}
