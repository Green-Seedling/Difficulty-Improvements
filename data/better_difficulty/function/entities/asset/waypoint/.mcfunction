# 一度データを引き出す
    data modify storage better_difficulty: temp.custom_option set from storage better_difficulty: waypoints

# ループ機構で照合していく
    function better_difficulty:entities/asset/waypoint/loop

# リセット
    data remove storage better_difficulty: temp
