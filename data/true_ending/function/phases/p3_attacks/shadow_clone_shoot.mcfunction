# Clone shoots fireballs at the nearest player
particle dragon_breath ~ ~ ~ 3 3 3 0.05 50 force @a[distance=..256]
execute facing entity @r[distance=..256,gamemode=!spectator] feet run summon fireball ^ ^ ^3 {Motion:[0.0d,0.0d,0.0d],ExplosionPower:1}
execute as @e[type=fireball,distance=..5,limit=1] at @s facing entity @r[distance=..256,gamemode=!spectator] feet run data merge entity @s {Motion:[0.3d,-0.05d,0.3d]}
