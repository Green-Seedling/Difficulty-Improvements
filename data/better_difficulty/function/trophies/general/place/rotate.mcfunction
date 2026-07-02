# 設置したプレイヤーの方向を向く
    execute rotated as @p[scores={Re_Difficulty.PlaceTrophy=1..}] run rotate @s ~ 0

# 東西南北のいずれか
    execute if entity @s[y_rotation=-45..45] run rotate @s 0 ~
    execute if entity @s[y_rotation=45..135] run rotate @s 90 ~
    execute if entity @s[y_rotation=135..-135] run rotate @s 180 ~
    execute if entity @s[y_rotation=-135..-45] run rotate @s -90 ~

# タグ剝奪
    tag @s add Re_Difficulty.TrophyInit
