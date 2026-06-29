# 元が0だったり死亡したプレイヤーのものらしかったら止める
    execute if data entity @s {Value:0s} run return run tag @s add Re_Difficulty.Init
    execute if entity @p[distance=..0.01,nbt={Health:0.0f}] run return run tag @s add Re_Difficulty.Init

# イージーで1/2、ハードで2倍になる(ただし0にはならない)
    execute if data storage better_difficulty: {Current:0b} store result entity @s Value short 0.5 run data get entity @s Value 1.0
    execute if data storage better_difficulty: {Current:1b} store result entity @s Value short 0.5 run data get entity @s Value 1.0
    execute if data storage better_difficulty: {Current:3b} store result entity @s Value short 2.0 run data get entity @s Value 1.0

    execute if data entity @s {Value:0s} run data modify entity @s Value set value 1s

# タグ付け
    tag @s add Re_Difficulty.Init
