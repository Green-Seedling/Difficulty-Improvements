# インストールメッセージ
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"Datapack: "},[{"nbt":"datapack.name","storage":"better_difficulty:"},{"text":" v."},{"nbt":"datapack.version","storage":"better_difficulty:"}],{"text":" が正常に導入されました。"}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [[{"nbt":"datapack.name","storage":"better_difficulty:"},{"text":" v."},{"nbt":"datapack.version","storage":"better_difficulty:"}],{"text":" has been successfully installed."}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]

# アップデートメッセージ
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"Datapack: "},[{"nbt":"datapack.name","storage":"better_difficulty:"},{"text":" が正常に v."},{"nbt":"datapack.version","storage":"better_difficulty:"}],{"text":" にアップデートされました。"}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [[{"nbt":"datapack.name","storage":"better_difficulty:"},{"text":" has been successfully updated to v."},{"nbt":"datapack.version","storage":"better_difficulty:"}],{"text":" ."}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]
