# 体力の倍率
    execute if data storage better_difficulty: {Current:0b} run function better_difficulty:entities/asset/health_scaling/peaceful
    execute if data storage better_difficulty: {Current:1b} run function better_difficulty:entities/asset/health_scaling/difficulty {difficulty:easy}
    execute if data storage better_difficulty: {Current:2b} run function better_difficulty:entities/asset/health_scaling/difficulty {difficulty:normal}
    execute if data storage better_difficulty: {Current:3b} run function better_difficulty:entities/asset/health_scaling/difficulty {difficulty:hard}

    function better_difficulty:entities/asset/health_scaling/ with storage better_difficulty: health_scaling

# マルチプレイヤーの場合はボスの体力がもう少し上がる
    execute if entity @s[type=#better_difficulty:boss_mobs] run function better_difficulty:entities/asset/health_scaling/multiplayer

# ノックバック耐性の増加
    execute if data storage better_difficulty: {Current:3b} run attribute @s minecraft:knockback_resistance modifier add better_difficulty:hard_exclusives 0.1 add_value

# 武器、防具のドロップ率が上がる
    function better_difficulty:entities/asset/drop_chances

# タグ付け
    tag @s add Re_Difficulty.Asset
