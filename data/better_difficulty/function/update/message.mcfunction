# インストールメッセージ
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"Datapack: ",color:"white"},[{"nbt":"datapack.name","storage":"better_difficulty:",interpret:true,color:"green"},{"text":" v",color:"white"},{"nbt":"datapack.version","storage":"better_difficulty:",interpret:true,color:"green"}],{"text":" が正常に導入されました。",color:"white"}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [[{"nbt":"datapack.name","storage":"better_difficulty:",interpret:true,color:"green"},{"text":" v",color:"white"},{"nbt":"datapack.version","storage":"better_difficulty:",interpret:true,color:"green"}],{"text":" has been successfully installed.",color:"white"}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute unless data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]

# アップデートメッセージ
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"Datapack: ",color:"white"},[{"nbt":"datapack.name","storage":"better_difficulty:",interpret:true,color:"green"},{"text":" が正常に v",color:"white"},{"nbt":"datapack.version","storage":"better_difficulty:",interpret:true,color:"green"}],{"text":" にアップデートされました。",color:"white"}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [[{"nbt":"datapack.name","storage":"better_difficulty:",interpret:true,color:"green"},{"text":" has been successfully updated to v",color:"white"},{"nbt":"datapack.version","storage":"better_difficulty:",interpret:true,color:"green"}],{"text":" .",color:"white"}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":""}]
    execute if data storage better_difficulty: datapack{installed:1b} run tellraw @a [{"text":"--------------------------------------------------","strikethrough":true}]
