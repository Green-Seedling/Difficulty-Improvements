# 一度データを引き出す
    data modify storage better_difficulty: temp.custom_option set from storage better_difficulty: health_scaling.custom

# 難易度をストレージに保存
    $data modify storage better_difficulty: temp.difficulty set value "$(difficulty)"

# ループ機構で照合していく
    function better_difficulty:entities/asset/health_scaling/custom/check_loop

# リセット
    data remove storage better_difficulty: temp
