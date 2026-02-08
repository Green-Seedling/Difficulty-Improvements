# スコアボード
    scoreboard objectives add Re_Difficulty.Global dummy
    scoreboard objectives add Re_Difficulty.PlaceTrophy minecraft.used:minecraft.item_frame
    
    scoreboard objectives add Re_Difficulty.MotionSpeed dummy

# forceload
    forceload add 0 0 0 0

# デフォルトの設定
    # 難易度別及びマルチプレイヤー
        data modify storage better_difficulty: health_scaling.base set value {easy:1.0,normal:1.25,hard:1.5,multiplayer:0.15}
        data modify storage better_difficulty: health_scaling.scaling set value 0.8

    #固有の倍率を設定するものたち
        data modify storage better_difficulty: health_scaling.custom set value []
        #バニラ
            data modify storage better_difficulty: option.custom append value {id:"minecraft:ender_dragon",scaling:{easy:1.0,normal:1.5,hard:1.875}}
            data modify storage better_difficulty: option.custom append value {id:"minecraft:wither",scaling:{easy:1.0,normal:1.3334,hard:1.6667}}
        #Illager Invasion
            data modify storage better_difficulty: option.custom append value {id:"illagerinvasion:invoker",scaling:{easy:1.0,normal:1.4,hard:1.75}}

# schedule
    schedule function better_difficulty:apply_option 1t

# 更新のお知らせ
    function better_difficulty:update/
