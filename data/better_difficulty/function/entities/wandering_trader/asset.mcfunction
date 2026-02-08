# ノーマルで取引枠を一つ追加(50%)
    execute if data storage better_difficulty: {Current:2b} if predicate {condition:"minecraft:random_chance",chance:0.5} run function better_difficulty:entities/wandering_trader/add_offer

# ハードで取引枠を一つ追加(確定)
    execute if data storage better_difficulty: {Current:3b} run function better_difficulty:entities/wandering_trader/add_offer
