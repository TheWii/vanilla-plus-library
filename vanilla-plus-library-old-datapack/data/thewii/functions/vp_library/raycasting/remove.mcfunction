scoreboard players set #dependencies twvp.temp 0
execute store result score #dependencies twvp.temp run data get storage thewii:vp_library/data modules.raycasting

execute if score #dependencies twvp.temp matches ..0 run scoreboard players set #dependencies twvp.temp 1
execute store result storage thewii:vp_library/data modules.raycasting int 1 run scoreboard players remove #dependencies twvp.temp 1
execute store result score #dependencies twvp.temp run scoreboard players get #dependencies twvp.temp

execute if score #dependencies twvp.temp matches ..0 run function thewii:vp_library/raycasting/uninstall
execute if score #dependencies twvp.temp matches ..0 run data remove storage thewii:vp_library/data modules.raycasting

function thewii:vp_library/core/check_uninstall