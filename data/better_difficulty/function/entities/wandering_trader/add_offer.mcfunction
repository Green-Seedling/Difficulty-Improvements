# 乱数生成
    execute store result score #Re_Difficulty.Random Re_Difficulty.Global run random value 0..7

# 取引内容をランダムに決める
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 0 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:name_tag",count:1}}
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 1 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:raw_copper_block",count:1}}
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 2 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:raw_iron_block",count:1}}
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 3 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:melon",count:1}}
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 4 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:5},sell:{id:"minecraft:magma_cream",count:1}}
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 5 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:experience_bottle",count:1}}
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 6 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:glow_berries",count:2}}
    execute if score #Re_Difficulty.Random Re_Difficulty.Global matches 7 run data modify entity @s Offers.Recipes append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:apple",count:1}}
