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

    #行商人の追加の販売内容
        execute if data storage better_difficulty: option.additional_offers run data modify storage better_difficulty: wandering_trader.additional_offers set from storage better_difficulty: option.additional_offers
        execute store result storage better_difficulty: wandering_trader.offer_count int 1.0 run data get storage better_difficulty: wandering_trader.additional_offers

# リセット
    data remove storage better_difficulty: option
