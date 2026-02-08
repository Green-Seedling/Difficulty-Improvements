# ストレージに入れる
    #難易度別及びマルチプレイヤー
        execute if data storage better_difficulty: option.easy run data modify storage better_difficulty: health_scaling.base.easy set from storage better_difficulty: option.easy
        execute if data storage better_difficulty: option.normal run data modify storage better_difficulty: health_scaling.base.normal set from storage better_difficulty: option.normal
        execute if data storage better_difficulty: option.hard run data modify storage better_difficulty: health_scaling.base.hard set from storage better_difficulty: option.hard
        execute if data storage better_difficulty: option.multiplayer run data modify storage better_difficulty: health_scaling.base.multiplayer set from storage better_difficulty: option.multiplayer

    #調整
        execute if data storage better_difficulty: option.scaling run data modify storage better_difficulty: health_scaling.scaling set from storage better_difficulty: option.scaling

    #カスタム設定
        execute if data storage better_difficulty: option.custom run data modify storage better_difficulty: health_scaling.custom set from storage better_difficulty: option.custom

# リセット
    data remove storage better_difficulty: option
