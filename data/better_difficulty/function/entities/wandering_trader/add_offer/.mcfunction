# 以下の条件に引っかかれば枠を増やす
    execute if predicate {type:"minecraft:any_of",terms:[{type:"minecraft:all_of",terms:["better_difficulty:difficulty/hard"]},{type:"minecraft:all_of",terms:["better_difficulty:difficulty/normal",{type:"minecraft:random_chance",chance:0.5}]}]} run function better_difficulty:entities/wandering_trader/add_offer/core with storage better_difficulty: wandering_trader

# タグを外す
    tag @s remove Re_Difficulty.PrepareOffer
