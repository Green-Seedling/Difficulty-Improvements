# 倍率をかける
    $execute store result storage better_difficulty: health_scaling.multiplier double $(scaling) run data get storage better_difficulty: health_scaling.multiplier 100.0
    execute store result storage better_difficulty: health_scaling.multiplier double 0.01 run data get storage better_difficulty: health_scaling.multiplier 1.0
