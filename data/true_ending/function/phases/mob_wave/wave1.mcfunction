title @a[distance=..256] title {"text":"Still standing?","color":"dark_green","bold":true}
title @a[distance=..256] subtitle {"text":"How quaint. The dead will finish what I started.","color":"green","italic":true}
playsound minecraft:entity.zombie.ambient hostile @a[distance=..256] 0 65 0 8 0.5
playsound minecraft:entity.skeleton.ambient hostile @a[distance=..256] 0 65 0 8 0.5
particle smoke 0 65 0 5 0 5 0.1 50 force @a[distance=..256]

# 8 Zombies
summon minecraft:zombie 25 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}
summon minecraft:zombie -25 65 0 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}
summon minecraft:zombie 0 65 25 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}
summon minecraft:zombie 0 65 -25 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}
summon minecraft:zombie 18 65 18 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}
summon minecraft:zombie -18 65 18 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}
summon minecraft:zombie 18 65 -18 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}
summon minecraft:zombie -18 65 -18 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:iron_sword,count:1}}}

# 6 Skeletons
summon minecraft:skeleton 30 65 10 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:bow,count:1}}}
summon minecraft:skeleton -30 65 -10 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:bow,count:1}}}
summon minecraft:skeleton 10 65 30 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:bow,count:1}}}
summon minecraft:skeleton -10 65 -30 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:bow,count:1}}}
summon minecraft:skeleton 20 65 -20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:bow,count:1}}}
summon minecraft:skeleton -20 65 20 {PersistenceRequired:1b,Tags:["trueEnding_wave_mob"], equipment:{mainhand:{id:bow,count:1}}}
