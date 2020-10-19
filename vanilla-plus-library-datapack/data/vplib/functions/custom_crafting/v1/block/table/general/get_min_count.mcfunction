#> vplib:custom_crafting/v1/block/table/general/get_min_count
# Description: Get the minimum count from a list of items.
# Input: 'vplib:temp array' / Reset #minimum vpcr.temp to 64
# Output: #minimum vpcr.temp

# Get current count
execute store result score #current vpcr.temp run data get storage vplib:temp array[-1].Count

# Set higher score
scoreboard players operation #minimum vpcr.temp < #current vpcr.temp

# Loop
data remove storage vplib:temp array[-1]
execute if data storage vplib:temp array[-1] run function vplib:custom_crafting/v1/block/table/general/get_min_count