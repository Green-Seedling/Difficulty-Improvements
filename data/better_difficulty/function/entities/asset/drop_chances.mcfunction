# 対象のデータを取得
    data modify storage better_difficulty: temp.drop_chances set from entity @s drop_chances

# 防具
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.head float 0.00015 run data get storage better_difficulty: temp.drop_chances.head 10000.0
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.body float 0.00015 run data get storage better_difficulty: temp.drop_chances.body 10000.0
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.legs float 0.00015 run data get storage better_difficulty: temp.drop_chances.legs 10000.0
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.feet float 0.00015 run data get storage better_difficulty: temp.drop_chances.feet 10000.0

    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.head float 0.0002 run data get storage better_difficulty: temp.drop_chances.head 10000.0
    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.body float 0.0002 run data get storage better_difficulty: temp.drop_chances.body 10000.0
    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.legs float 0.0002 run data get storage better_difficulty: temp.drop_chances.legs 10000.0
    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.feet float 0.0002 run data get storage better_difficulty: temp.drop_chances.feet 10000.0

# 武器
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.mainhand float 0.00015 run data get storage better_difficulty: temp.drop_chances.mainhand 10000.0
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.offhand float 0.00015 run data get storage better_difficulty: temp.drop_chances.offhand 10000.0

    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.mainhand float 0.0002 run data get storage better_difficulty: temp.drop_chances.mainhand 10000.0
    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.offhand float 0.0002 run data get storage better_difficulty: temp.drop_chances.offhand 10000.0

# その他
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.body float 0.00015 run data get storage better_difficulty: temp.drop_chances.body 10000.0
    execute if data storage better_difficulty: {Current:2b} store result storage better_difficulty: temp.drop_chances.saddle float 0.00015 run data get storage better_difficulty: temp.drop_chances.saddle 10000.0

    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.body float 0.0002 run data get storage better_difficulty: temp.drop_chances.body 10000.0
    execute if data storage better_difficulty: {Current:3b} store result storage better_difficulty: temp.drop_chances.saddle float 0.0002 run data get storage better_difficulty: temp.drop_chances.saddle 10000.0

# 対象のデータを上書き
    data modify entity @s drop_chances set from storage better_difficulty: temp.drop_chances

# リセット
    data remove storage better_difficulty: temp.drop_chances
