scoreboard players set 5tick trueEnding_clock 0

schedule function true_ending:clocks/5tick 5t

execute in the_end positioned 0 90 0 as @e[distance=..24,type=experience_orb] run function true_ending:other/xp