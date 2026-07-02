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
        #バニラ
            data modify storage better_difficulty: option.custom append value {id:"minecraft:ender_dragon",scaling:{easy:1.0,normal:1.5,hard:1.875}}
            data modify storage better_difficulty: option.custom append value {id:"minecraft:wither",scaling:{easy:1.0,normal:1.3334,hard:1.6667}}
        #Illager Invasion
            data modify storage better_difficulty: option.custom append value {id:"illagerinvasion:invoker",scaling:{easy:1.0,normal:1.4,hard:1.75}}

    #行商人の取引内容
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:golden_apple",count:1},maxUses:2}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:enchanted_golden_apple",count:1},maxUses:1}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:golden_carrot",count:1},maxUses:8}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:glistering_melon_slice",count:2},maxUses:5}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:golden_dandelion",count:1},maxUses:8}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:raw_copper_block",count:1},maxUses:2}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:raw_iron_block",count:1},maxUses:2}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:melon",count:1},maxUses:4}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:magma_cream",count:1},maxUses:5}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:experience_bottle",count:1},maxUses:5}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:sweet_berries",count:6},maxUses:12}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:glow_berries",count:4},maxUses:12}

# schedule
    schedule function better_difficulty:apply_option 1t

# 更新のお知らせ
    function better_difficulty:update/
