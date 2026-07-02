# 現在のバージョンフォーマットを取得
    execute store result score #Re_Difficulty.Version Re_Difficulty.Global run data get storage better_difficulty: datapack.format

# 現在のものより小さかったらこの先を実行する
    $execute if score #Re_Difficulty.Version Re_Difficulty.Global matches $(format).. run return run scoreboard players reset #Re_Difficulty.Version Re_Difficulty.Global

# データを更新
    $data modify storage better_difficulty: datapack.name set value "$(pack)"
    $data modify storage better_difficulty: datapack.version set value "$(version)"
    $data modify storage better_difficulty: datapack.format set value $(format)

# メッセージを表示
    function better_difficulty:update/message

# リセット
    scoreboard players reset #Re_Difficulty.Version Re_Difficulty.Global
