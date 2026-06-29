# 一度データを引き出してくる
    attribute @s max_health modifier add minecraft:none 1024.0 add_value

# 体力に乗算
    $execute store result entity @s Health float $(multiplier) run data get entity @s Health 1.0
    $execute store result entity @s attributes[{id:"minecraft:max_health"}].base int $(multiplier) run attribute @s minecraft:max_health base get 1.0

# リセット
    attribute @s max_health modifier remove minecraft:none
    data remove storage better_difficulty: health_scaling.multiplier
