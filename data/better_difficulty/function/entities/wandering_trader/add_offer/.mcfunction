# 以下の条件に引っかかれば枠を増やす
    execute if predicate {condition:"minecraft:any_of",terms:[{condition:"minecraft:all_of",terms:[{condition:"minecraft:reference",name:"better_difficulty:difficulty/hard"}]},{condition:"minecraft:all_of",terms:[{condition:"minecraft:reference",name:"better_difficulty:difficulty/normal"},{condition:"minecraft:random_chance",chance:0.5}]}]} run function better_difficulty:entities/wandering_trader/add_offer/core with storage better_difficulty: wandering_trader

# タグを外す
    tag @s remove Re_Difficulty.PrepareOffer
