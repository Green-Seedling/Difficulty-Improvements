# 一番手前のデータを取得
    data modify storage better_difficulty: temp.current_list set from storage better_difficulty: temp.custom_option[0]

# IDとの照合
    execute if data storage better_difficulty: temp.current_list.id run function better_difficulty:entities/asset/waypoint/check_id with storage better_difficulty: temp.current_list

# タグとの照合
    execute if data storage better_difficulty: temp.current_list.tag run function better_difficulty:entities/asset/waypoint/check_tag with storage better_difficulty: temp.current_list

# IDまたはタグが合致したら実行
    execute if score #Re_Difficulty.ConditionValue Re_Difficulty.Global >= #Re_Difficulty.ConditionRange Re_Difficulty.Global run return run function better_difficulty:entities/asset/waypoint/apply with storage better_difficulty: temp.current_list

# 先頭のリストを削除
    data remove storage better_difficulty: temp.custom_option[0]

# スコアリセット
    scoreboard players reset #Re_Difficulty.ConditionRange
    scoreboard players reset #Re_Difficulty.ConditionValue

# リストが残っていたら実行
    execute if data storage better_difficulty: temp.custom_option[0] run return run function better_difficulty:entities/asset/waypoint/loop
