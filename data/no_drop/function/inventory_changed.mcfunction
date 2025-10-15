#> no_drop:inventory_changed
#
# 進捗 no_drop:inventory_changed の報酬関数
#
# @within advancement no_drop:inventory_changed

# クリエイティブモード・スペクテイターモードのプレイヤーは動作を保証できない
    execute unless entity @s[gamemode=!creative, gamemode=!spectator] run return run advancement revoke @s only no_drop:inventory_changed

# プレイヤーを保存
    tag @s add NoDrop.Thrower

# 周囲のドロップされたアイテムのうち条件を満たすものを取得
    execute as @e[type=item, distance=..8, predicate=no_drop:is_target_item_entity] if data entity @s Thrower run tag @s add NoDrop.ItemStack

    data modify storage no_drop: trigger set value false

    execute store result storage no_drop: trigger byte 1 if entity @e[tag=NoDrop.ItemStack]

# 保存されていたデータの取り出し
    function #oh_my_dat:please

    data modify storage no_drop: inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.inventory
    data modify storage no_drop: equipment set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.equipment
    data modify storage no_drop: crafting set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.crafting
    data modify storage no_drop: cursor set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.cursor

# 最新のデータを保存
    function no_drop:save/

# 条件を満たすドロップアイテムがあればドロップされた際の処理へ移動
    execute if entity @e[type=player, tag=NoDrop.Thrower] if data storage no_drop: {trigger: true} run function no_drop:load/

# リセット
    tag @s remove NoDrop.Thrower

    kill @n[type=item, tag=NoDrop.ItemStack]

    data remove storage no_drop: inventory
    data remove storage no_drop: equipment
    data remove storage no_drop: crafting
    data remove storage no_drop: cursor

    data remove storage no_drop: trigger

# "最後に" 進捗剥奪
    advancement revoke @s only no_drop:inventory_changed
