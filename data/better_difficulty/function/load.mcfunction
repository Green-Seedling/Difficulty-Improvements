# スコアボード
    scoreboard objectives add Re_Difficulty.Global dummy
    scoreboard objectives add Re_Difficulty.PlaceTrophy minecraft.used:minecraft.item_frame

# forceload
    forceload add 0 0 0 0

# デフォルトの設定
    # 難易度別及びマルチプレイヤー
        data modify storage better_difficulty: health_scaling.base set value {peaceful:0.5,easy:0.75,normal:1.0,hard:1.25,multiplayer:0.15}
        data modify storage better_difficulty: health_scaling.scaling set value 1.0

    #固有の倍率を設定するものたち
        #バニラ
            data modify storage better_difficulty: option.custom append value {id:"minecraft:ender_dragon",scaling:{easy:1.0,normal:1.5,hard:1.875}}
            data modify storage better_difficulty: option.custom append value {id:"minecraft:wither",scaling:{easy:1.0,normal:1.333334,hard:1.666667}}
        #Illager Invasion
            data modify storage better_difficulty: option.custom append value {id:"illagerinvasion:invoker",scaling:{easy:1.0,normal:1.4,hard:1.75}}

    #エンティティのウェイポイントの設定
        #バニラ
            data modify storage better_difficulty: option.waypoint append value {id:"minecraft:ender_dragon",color:12345301,distance:192}
            data modify storage better_difficulty: option.waypoint append value {id:"minecraft:wither",color:3552822,distance:160}
            data modify storage better_difficulty: option.waypoint append value {id:"minecraft:warden",color:224624,distance:60}
        #Illager Invasion
            data modify storage better_difficulty: option.waypoint append value {id:"illagerinvasion:invoker",color:15391111,distance:160}

    #行商人の取引内容
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:8},sell:{id:"minecraft:golden_apple",count:1},maxUses:2}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:enchanted_golden_apple",count:1},maxUses:1}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:golden_carrot",count:1},maxUses:8}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:glistering_melon_slice",count:2},maxUses:5}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:raw_copper_block",count:1},maxUses:2}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:6},sell:{id:"minecraft:raw_iron_block",count:1},maxUses:2}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:2},sell:{id:"minecraft:melon",count:1},maxUses:4}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:experience_bottle",count:1},maxUses:5}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:sweet_berries",count:6},maxUses:12}
        data modify storage better_difficulty: option.additional_offers append value {buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:glow_berries",count:4},maxUses:12}

# schedule
    schedule function better_difficulty:apply_option 1t

# 更新のお知らせ
    function better_difficulty:update/
