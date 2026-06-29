# 通常の体力の倍率を設定
    data modify storage better_difficulty: health_scaling.multiplier set value 0.5

# 付いているのならタグを外す
    execute if entity @s[tag=Re_Difficulty.Customized] run tag @s remove Re_Difficulty.Customized
