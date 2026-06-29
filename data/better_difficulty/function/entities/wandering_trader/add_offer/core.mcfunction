# 乱数生成
    $execute store result storage better_difficulty: temp.rng int 0.999999999 run random value 1..$(offer_count)

# 設定
    function better_difficulty:entities/wandering_trader/add_offer/set with storage better_difficulty: temp

# リセット
    data remove storage better_difficulty: temp
