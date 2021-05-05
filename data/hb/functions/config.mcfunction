############################################
# General                                  #
############################################

# Allow version prompt print out
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #hb$print_version Config 2

# Allow initial prompt print out
# boolean, default: 0
scoreboard players set #hb$print_init Config 0

# Allow config prompt print out
# boolean, default: 0
scoreboard players set #hb$print_config Config 0


############################################
# Health bar                               #
############################################

# Display
# 0 = basic, 1 = advanced
# integer, default: 0
scoreboard players set #hb$health_bar_type Config 0


# Offset - Normal
# integer, -99 ~ 99, default: -6
scoreboard players set #hb$health_bar_offset_normal Config -6

# Offset - Have custom name
# integer, -99 ~ 99, default: -6
scoreboard players set #hb$health_bar_offset_custom_name Config -6


  ########################################
  # Display - Basic                      #
  ########################################

# Use dots(".") as the health bar

# Color - Background
# default: '{"text":"","color":"#686868"}'
data modify storage hb:config health_bar_basic_background_color set value '{"text":"","color":"#686868"}'

# Color - Value
# default: '{"text":"","color":"#FF1313"}'
data modify storage hb:config health_bar_basic_value_color set value '{"text":"","color":"#FF1313"}'

# Color - Border
# default: '{"text":"","color":"#FFFFFF"}'
data modify storage hb:config health_bar_basic_border_color set value '{"text":"","color":"#303030"}'


  ########################################
  # Display - Advanced                   #
  ########################################

# Use custom resource-pack as the health bar

# Size - Maximum
# integer, 2 ~ 12, default: 12
scoreboard players set #hb$health_bar_advanced_size_max Config 12

## Color - Background
# Allow color tint
# boolean, default: 1
scoreboard players set #hb$health_bar_advanced_background_color Config 1
# default: '{"text":"","color":"#686868"}'
data modify storage hb:config health_bar_advanced_background_color set value '{"text":"","color":"#686868"}'

## Color - Value
# Allow color tint
# boolean, default: 1
scoreboard players set #hb$health_bar_advanced_value_color Config 1
# default: '{"text":"","color":"#FF1313"}'
data modify storage hb:config health_bar_advanced_value_color set value '{"text":"","color":"#FF1313"}'

## Color - Foreground
# Allow color tint
# boolean, default: 0
scoreboard players set #hb$health_bar_advanced_foreground_color Config 0
# default: '{"text":"","color":"#FFFFFF"}'
data modify storage hb:config health_bar_advanced_foreground_color set value '{"text":"","color":"#FFFFFF"}'


  ########################################
  # Tag Limit                            #
  ########################################

# The number of entities that can show their health bar, per player.

# Mob
# integer, default: 6
scoreboard players set #hb$health_bar_tag_limit_mob Config 6

# Mob - Hostile
# integer, default: 4
scoreboard players set #hb$health_bar_tag_limit_mob_hostile Config 4

# Mob - Neutral
# integer, default: 2
scoreboard players set #hb$health_bar_tag_limit_mob_neutral Config 2

# Mob - Passive
# integer, default: 3
scoreboard players set #hb$health_bar_tag_limit_mob_passive Config 3
