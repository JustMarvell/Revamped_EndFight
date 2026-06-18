# Phase 2 Transition - triggered when dragon HP reaches 50% for the first time
# Called from a_main_override when trueEnding_halfhealth tag is added AND bigphase == 1

# Mark that we are now entering Phase 2
scoreboard players set @s trueEnding_bigphase 2

# Visual + audio fanfare
particle explosion_emitter 0 80 0 0 0 0 0 1 force @a[distance=..256]
particle end_rod 0 80 0 5 5 5 0.05 200 force @a[distance=..256]
particle dragon_breath 0 80 0 8 8 8 0.1 300 force @a[distance=..256]
playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..256] 0 80 0 10 0.5
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..256] 0 80 0 8 0.7
playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] 0 80 0 8 2
playsound minecraft:ambient.basalt_deltas.mood hostile @a[distance=..256] 0 80 0 8 0.6

# Title announcement
title @a[distance=..256] title {"text":"You dare wound me?!","color":"dark_red","bold":true}
title @a[distance=..256] subtitle {"text":"I have not even BEGUN to fight, worm.","color":"red","italic":true}
title @a[distance=..256] actionbar {"text":"✦ The dragon stirs with unbridled fury ✦","color":"gold"}

# Make dragon invulnerable briefly during transform
data modify entity @s Invulnerable set value 1b
data modify entity @s NoAI set value 1b

# Teleport dragon up for the transition animation
tp @s 0 120 0

# Reset attack timer for phase 2
scoreboard players set @s trueEnding_attacktimer 0

# Flag to track transition state (1 = in transition animation)
scoreboard players set @s trueEnding_p2_transitioning 1

# Schedule health restoration (done via tick function watching the transitioning flag)
