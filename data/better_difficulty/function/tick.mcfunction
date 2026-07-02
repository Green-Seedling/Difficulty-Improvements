# 必須データ取得
    function better_difficulty:get_data

# 敵対Mobの処理
    execute if entity @n[type=#better_difficulty:hostile_mobs,tag=!Re_Difficulty.Asset] as @e[type=#better_difficulty:hostile_mobs,tag=!Re_Difficulty.Asset] at @s run function better_difficulty:entities/asset/

# 友好Mobの処理
    execute if entity @n[type=#better_difficulty:passive_mobs,tag=!Re_Difficulty.Asset] as @e[type=#better_difficulty:passive_mobs,tag=!Re_Difficulty.Asset] at @s run function better_difficulty:entities/asset/passive/
    execute if entity @n[type=minecraft:wandering_trader,predicate=better_difficulty:preparing_trader] as @n[type=minecraft:wandering_trader,predicate=better_difficulty:preparing_trader] at @s run function better_difficulty:entities/wandering_trader/add_offer/

# 経験値オーブの設定
    execute if entity @n[type=minecraft:experience_orb,tag=!Re_Difficulty.Init] as @e[type=minecraft:experience_orb,tag=!Re_Difficulty.Init] at @s run function better_difficulty:entities/experience_orb/init

# インタラクション
    execute as @e[type=minecraft:interaction,tag=Re_Difficulty.RideInteraction] at @s unless predicate better_difficulty:if_vehicle run kill @s

# トロフィー関連
    execute if entity @n[tag=Re_Difficulty.Trophy] as @e[tag=Re_Difficulty.Trophy] at @s run function better_difficulty:trophies/main

# プレイヤーのスコアをリセットする
    scoreboard players reset @a Re_Difficulty.PlaceTrophy
