# 一度データを引き出してくる
    attribute @s max_health modifier add minecraft:none 1024.0 add_value

# データをストレージに代入
    $execute store result storage better_difficulty: health_scaling.value int $(multiplier) run data get entity @s Health 100.0
    $execute store result storage better_difficulty: health_scaling.max int $(multiplier) run attribute @s minecraft:max_health base get 100.0

# 体力に乗算
    execute store result entity @s Health float 0.01 run data get storage better_difficulty: health_scaling.value 1.0
    execute store result entity @s attributes[{id:"minecraft:max_health"}].base double 0.01 run data get storage better_difficulty: health_scaling.max 1.0

# リセット
    attribute @s max_health modifier remove minecraft:none
    data remove storage better_difficulty: health_scaling.multiplier
    data remove storage better_difficulty: health_scaling.value
    data remove storage better_difficulty: health_scaling.max
