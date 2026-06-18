fill -12 64 -22 -8 64 -18 obsidian

# The Brain memories are what actually prevent digging.
# dig_cooldown = won't dig. is_emerging = currently emerging (locks it out of digging).
# Both need a high ttl (ticks) so it stays long enough to fight.
summon minecraft:warden -10 65 -20 { PersistenceRequired:1b, Tags:["trueEnding_wave_mob"], Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:999999L},"minecraft:is_emerging":{value:{},ttl:85L}}},attributes:[{id:"minecraft:max_health",base:275.0},{id:"minecraft:follow_range",base:64.0}]}

# Give it a CustomName so it NEVER despawns (named wardens ignore the 60s calm timer too)
data modify entity @e[type=minecraft:warden,tag=trueEnding_wave_mob,limit=1] CustomName set value '"PANGAU"'
data modify entity @e[type=minecraft:warden,tag=trueEnding_wave_mob,limit=1] CustomNameVisible set value 1b

# Heal to full after spawning to apply the 275 max health
effect give @e[type=minecraft:warden,tag=trueEnding_wave_mob,limit=1] minecraft:instant_health 1 9 true

title @a[distance=..256] title {"text":"...Fine.","color":"dark_gray","bold":true}
title @a[distance=..256] subtitle {"text":"If my armies cannot crush you — HE will.","color":"dark_purple","bold":true,"italic":true}
playsound minecraft:entity.warden.emerge hostile @a[distance=..256] -10 65 -20 10 1
playsound minecraft:entity.warden.heartbeat hostile @a[distance=..256] -10 65 -20 10 0.5
particle sculk_soul -10 65 -20 5 5 5 0.02 100 force @a[distance=..256]
particle sculk_charge_pop -10 65 -20 3 0 3 0.1 50 force @a[distance=..256]