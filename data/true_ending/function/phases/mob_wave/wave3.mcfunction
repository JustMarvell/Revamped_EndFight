title @a[distance=..256] title {"text":"Impossible...","color":"dark_red","bold":true}
title @a[distance=..256] subtitle {"text":"No matter. My raid will break your spirit!","color":"red","italic":true}
playsound minecraft:entity.ravager.ambient hostile @a[distance=..256] 0 65 0 8 0.5
playsound minecraft:entity.vindicator.ambient hostile @a[distance=..256] 0 65 0 8 0.5
particle crit 0 65 0 5 0 5 0.1 60 force @a[distance=..256]

# 6 Pillagers
summon minecraft:pillager 28 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:pillager -28 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:pillager 0 65 28 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:pillager 0 65 -28 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:pillager 20 65 20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}
summon minecraft:pillager -20 65 -20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:crossbow,count:1}}}

# 4 Vindicators
summon minecraft:vindicator 20 65 -10 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:iron_axe,count:1}}}
summon minecraft:vindicator -20 65 10 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:iron_axe,count:1}}}
summon minecraft:vindicator 10 65 20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:iron_axe,count:1}}}
summon minecraft:vindicator -10 65 -20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"],active_effects:[{id:"minecraft:strength",duration:6000,amplifier:1,show_particles:0b},{id:"minecraft:speed",duration:6000,amplifier:1,show_particles:0b}], equipment:{mainhand:{id:iron_axe,count:1}}}

# 2 Ravagers
summon ravager 35 65 0 {Health:50, attributes:[{id:max_health,base:50f}], PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_axe,count:1}}}
summon ravager -35 65 0 {Health:50, attributes:[{id:max_health,base:50f}], PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_axe,count:1}}}

# 2 Witch
summon witch 35 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"]}
summon witch -35 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"]}

# 1 Evoker
summon evoker -10 65 -20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"]}