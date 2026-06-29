# サウンド
    playsound block.stone.place block @a ~ ~ ~ 1 1

# 召喚
    execute align xyz positioned ~0.5 ~ ~0.5 run function better_difficulty:trophies/general/place/summon with entity @s data

# 向きの補正
    execute as @e[tag=Re_Difficulty.TrophyModel,tag=Re_Difficulty.Head,tag=!Re_Difficulty.TrophyInit] at @s run function better_difficulty:trophies/general/place/rotate

# キル
    kill @s
