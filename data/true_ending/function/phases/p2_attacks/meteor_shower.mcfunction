# Meteor Shower: Summon 8 large fireballs falling toward player positions
tag @s add trueEnding_inattack
playsound minecraft:entity.blaze.shoot hostile @a[distance=..256] ~ ~ ~ 8 0.6
playsound minecraft:block.fire.extinguish hostile @a[distance=..256] ~ ~ ~ 6 0.4
title @a[distance=..256] actionbar {"text":"\"The sky itself obeys me — burn!\"","color":"gold","bold":true,"italic":true}
# Summon fireballs at height 130 aimed down at random player offsets
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~5 130 ~5 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~-5 130 ~-3 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~8 130 ~-8 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~-8 130 ~8 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~12 130 ~3 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~-3 130 ~12 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~-12 130 ~-5 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
execute as @a[distance=..256,gamemode=!spectator,gamemode=!creative,limit=1,sort=random] at @s run summon fireball ~4 130 ~-12 {Motion:[0.0d,-1.5d,0.0d],ExplosionPower:2}
# Particle warning indicators at ground level
execute as @a[distance=..256,gamemode=!spectator] at @s run particle crit ~ ~1 ~ 1 0 1 0.05 30 force @a[distance=..256]
