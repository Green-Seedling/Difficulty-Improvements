# 固有の体力倍率との照合
    $function better_difficulty:entities/asset/health_scaling/custom/check {difficulty:"$(difficulty)"}

# 通常の体力の倍率を設定
    $execute unless entity @s[tag=Re_Difficulty.Customized] run data modify storage better_difficulty: health_scaling.multiplier set from storage better_difficulty: health_scaling.base.$(difficulty)

# 調整
    execute unless entity @s[tag=Re_Difficulty.Customized] run function better_difficulty:entities/asset/health_scaling/scaling with storage better_difficulty: health_scaling

# 付いているのならタグを外す
    execute if entity @s[tag=Re_Difficulty.Customized] run tag @s remove Re_Difficulty.Customized
