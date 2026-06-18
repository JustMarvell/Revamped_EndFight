# Acid Rain: Dragon spews dragon breath clouds that rain down
tag @s add trueEnding_inattack
playsound minecraft:entity.ender_dragon.shoot hostile @a[distance=..256] ~ ~ ~ 8 0.5
playsound minecraft:ambient.basalt_deltas.additions hostile @a[distance=..256] ~ ~ ~ 6 0.8
title @a[distance=..256] actionbar {"text":"\"Choke on the breath of a true dragon!\"","color":"green","bold":true,"italic":true}
# Summon dragon breath clouds at various positions

# 1. Clouds above random nearby players (3 clouds)
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,sort=random,limit=3] at @s run summon area_effect_cloud ~ ~5 ~ {Radius:3.5f,Duration:120,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b},{id:"minecraft:slowness",duration:80,amplifier:1}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}

# 2. Fully random clouds around the dragon (spawn ~1 block above ground)
execute at @s run summon area_effect_cloud ^ ^ ^10 {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}
execute at @s run summon area_effect_cloud ^ ^ ^-10 {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}
execute at @s run summon area_effect_cloud ^10 ^ ^ {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}
execute at @s run summon area_effect_cloud ^-10 ^ ^ {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}

# Better randomization using random angles + distance
execute at @s positioned ~ ~10 ~ run summon area_effect_cloud ^ ^ ^12 {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}
execute at @s positioned ~ ~10 ~ run summon area_effect_cloud ^ ^ ^-12 {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}
execute at @s positioned ~ ~10 ~ run summon area_effect_cloud ^12 ^ ^ {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}
execute at @s positioned ~ ~10 ~ run summon area_effect_cloud ^-12 ^ ^ {Radius:4f,Duration:100,ReapplicationDelay:10,custom_particle:{type:"dragon_breath"},potion_contents:{custom_effects:[{id:"minecraft:poison",duration:100,amplifier:1,show_particles:0b,show_icon:1b}]},Tags:["trueEnding_dragonbreath"],WaitTime:0}

tag @s remove trueEnding_inattack
