# 行商人
    execute if entity @s[type=wandering_trader] run function better_difficulty:entities/wandering_trader/asset

# 村人
    execute if entity @s[type=villager] run effect give @s minecraft:regeneration infinite 0 true

# タグ付け
    tag @s add Re_Difficulty.Asset
