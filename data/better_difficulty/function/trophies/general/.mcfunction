# 下にブロックがなかったとき
    execute if block ~ ~-1 ~ #minecraft:air run function better_difficulty:trophies/general/break

# プレイヤーに左クリックされたとき
    execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{nbt:"{attack:{}}"}} run function better_difficulty:trophies/general/break
