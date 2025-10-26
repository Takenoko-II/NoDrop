#> no_drop:tick

# カーソルから投げたとき
    execute as @e[type=item, predicate=no_drop:is_target_item_entity, tag=!NoDrop.Exception] if data entity @s Thrower \
        on origin unless entity @s[gamemode=!survival, gamemode=!adventure] at @s run function no_drop:inventory_changed

# player.crafting.* の対策
    #execute as @a if items entity @s player.crafting.* *[custom_data~{no_drop:{}}] in overworld run function no_drop:prevent_minicraft

# 作業台等の対策
    execute as @a[tag=NoDrop.IsCursorHolding] unless items entity @s player.cursor * run function no_drop:inventory_changed

    tag @a remove NoDrop.IsCursorHolding

    execute as @a if items entity @s player.cursor * run tag @s add NoDrop.IsCursorHolding

# 一生お前について回る
    execute as @e[type=item, predicate=no_drop:is_target_item_entity] if data entity @s Thrower run function no_drop:teleport
