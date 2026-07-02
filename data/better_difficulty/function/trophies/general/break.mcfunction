# 壊そうとしたプレイヤーを捜索
    execute as @n[tag=Re_Difficulty.Trophy,distance=..0.01] on attacker run tag @s[type=player] add Re_Difficulty.Attacker

# NBTを消しておく
    data remove entity @s attack

# クリエ且つ武器を持っていた場合は強制終了
    execute if items entity @p[tag=Re_Difficulty.Attacker,gamemode=creative] weapon.mainhand *[minecraft:tool~{can_destroy_blocks_in_creative:false}] run return run tag @p[tag=Re_Difficulty.Attacker] remove Re_Difficulty.Attacker

# クリエのプレイヤーが壊したのでなければルートテーブルを参照
    execute on vehicle unless entity @p[tag=Re_Difficulty.Attacker,gamemode=creative] run function better_difficulty:trophies/general/loot with entity @s data."better_difficulty:loot_path"

# サウンド
    playsound block.stone.break block @a ~ ~ ~ 1 1

# パーティクル
    particle block{block_state:"minecraft:gold_block"} ~ ~0.5 ~ 0.25 0.25 0.25 4 64 normal

# 全てキル
    kill @e[tag=Re_Difficulty.TrophyModel,distance=..0.01]
    kill @s
    
# リセット
    tag @p[tag=Re_Difficulty.Attacker] remove Re_Difficulty.Attacker