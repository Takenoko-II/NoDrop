#> no_drop:tick

# カーソルから投げたとき
    execute as @e[type=item, predicate=no_drop:is_target_item_entity] if data entity @s Thrower \
        on origin unless entity @s[gamemode=!survival, gamemode=!adventure] at @s run function no_drop:inventory_changed

# player.crafting.* の対策
    #execute as @a in overworld run function no_drop:save/only_cursor
