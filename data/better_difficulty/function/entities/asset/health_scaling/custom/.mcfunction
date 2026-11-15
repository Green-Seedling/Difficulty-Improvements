# 固有の体力倍率を設定
    $data modify storage better_difficulty: health_scaling.multiplier set from storage better_difficulty: temp.current_list.scaling.$(difficulty)

# タグを付ける
    tag @s add Re_Difficulty.Customized
