# 条件数の増加
    scoreboard players add #Re_Difficulty.ConditionRange Re_Difficulty.Global 1

# IDが存在したらタグを付ける
    $execute if entity @s[type=$(id)] run scoreboard players add #Re_Difficulty.ConditionValue Re_Difficulty.Global 1
