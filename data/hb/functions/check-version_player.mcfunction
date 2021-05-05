scoreboard players operation #new_x.*.*-* Version = #hb$currently_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #hb$currently_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #hb$currently_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #hb$currently_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = @s VersionHBX
scoreboard players operation #currently_*.x.*-* Version = @s VersionHBY
scoreboard players operation #currently_*.*.x-* Version = @s VersionHBZ
scoreboard players operation #currently_*.*.*-x Version = @s VersionHBA
function cu:version/check

execute if score #change Version matches 1 run function hb:debug/remove-init_tag

scoreboard players operation @s VersionHBX = #hb$currently_version_x.*.*-* Meta
scoreboard players operation @s VersionHBY = #hb$currently_version_*.x.*-* Meta
scoreboard players operation @s VersionHBZ = #hb$currently_version_*.*.x-* Meta
scoreboard players operation @s VersionHBA = #hb$currently_version_*.*.*-x Meta
