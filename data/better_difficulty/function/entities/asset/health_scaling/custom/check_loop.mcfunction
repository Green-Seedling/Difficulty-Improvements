# 一番手前のデータを取得
    data modify storage better_difficulty: temp.current_list set from storage better_difficulty: temp.custom_option[0]

# IDとの照合
    execute if data storage better_difficulty: temp.current_list.id run function better_difficulty:entities/asset/health_scaling/custom/check_id with storage better_difficulty: temp.current_list

# タグとの照合
    execute if data storage better_difficulty: temp.current_list.tag run function better_difficulty:entities/asset/health_scaling/custom/check_tag with storage better_difficulty: temp.current_list

# IDまたはタグが合致したら実行
    execute if entity @s[tag=Re_Difficulty.Customized] run return run function better_difficulty:entities/asset/health_scaling/custom/ with storage better_difficulty: temp

# 先頭のリストを削除
    data remove storage better_difficulty: temp.custom_option[0]

# リストが残っていたら実行
    execute if data storage better_difficulty: temp.custom_option[0] run return run function better_difficulty:entities/asset/health_scaling/custom/check_loop
