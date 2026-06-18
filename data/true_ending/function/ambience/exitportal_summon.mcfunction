# Directly summon at the known fountain position instead of recursing
# The exitportal marker sits 3 blocks below the top of the fountain (y=63), so y=60
execute in the_end if block 0 63 0 bedrock run summon marker 0 60 0 {Tags:["trueEnding_exitportal"]}