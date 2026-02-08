# プレイヤーの人数を取得
    execute store result score #Re_Difficulty.MultiplayerCount Re_Difficulty.Global run data get storage better_difficulty: Players

# 倍率を取得
    execute store result score #Re_Difficulty.MultiplayerMultiplier Re_Difficulty.Global run data get storage better_difficulty: health_scaling.base.multiplayer 10000.0

# 計算
    scoreboard players remove #Re_Difficulty.MultiplayerCount Re_Difficulty.Global 1
    scoreboard players operation #Re_Difficulty.MultiplayerMultiplier Re_Difficulty.Global *= #Re_Difficulty.MultiplayerCount Re_Difficulty.Global

    scoreboard players add #Re_Difficulty.MultiplayerMultiplier Re_Difficulty.Global 10000

# ストレージに代入
    execute store result storage better_difficulty: health_scaling.multiplier double 0.0001 run scoreboard players get #Re_Difficulty.MultiplayerMultiplier Re_Difficulty.Global

# 適応させる
    function better_difficulty:entities/asset/health_scaling/ with storage better_difficulty: health_scaling

# リセット
    scoreboard players reset #Re_Difficulty.MultiplayerCount Re_Difficulty.Global
    scoreboard players reset #Re_Difficulty.MultiplayerMultiplier Re_Difficulty.Global
