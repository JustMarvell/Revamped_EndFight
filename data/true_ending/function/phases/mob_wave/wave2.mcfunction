title @a[distance=..256] title {"text":"Tch. Luck.","color":"gold","bold":true}
title @a[distance=..256] subtitle {"text":"Let's see you burn through iron and gold!","color":"#da3f03","italic":true}
playsound minecraft:entity.piglin.ambient hostile @a[distance=..256] 0 65 0 8 0.5
particle soul_fire_flame 0 65 0 5 0 5 0.1 80 force @a[distance=..256]

# 8 Piglins
summon minecraft:piglin 25 65 5 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:piglin -25 65 -5 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:piglin 5 65 25 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:piglin -5 65 -25 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:piglin 20 65 -15 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:piglin -20 65 15 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:piglin 15 65 20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:piglin -15 65 -20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:2,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}

# 3 Piglin Brutes
summon piglin_brute 28 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:3,show_particles:0b}], equipment:{mainhand:{id:iron_axe,count:1}}}
summon piglin_brute -28 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:3,show_particles:0b}], equipment:{mainhand:{id:iron_axe,count:1}}}
summon piglin_brute 0 65 28 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],IsImmuneToZombification:1b,active_effects:[{id:"minecraft:strength",duration:6000,amplifier:3,show_particles:0b}], equipment:{mainhand:{id:iron_axe,count:1}}}

# 3 Wither Skeleton
summon wither_skeleton 28 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], active_effects:[{id:"minecraft:strength",duration:6000,amplifier:3,show_particles:0b}], equipment:{mainhand:{id:stone_sword,count:1}}}
summon wither_skeleton -28 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:3,show_particles:0b}], equipment:{mainhand:{id:stone_sword,count:1}}}
summon wither_skeleton 0 65 28 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:3,show_particles:0b}], equipment:{mainhand:{id:stone_sword,count:1}}}