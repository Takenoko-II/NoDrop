#> no_drop:trigger
#
# inventory_changedがトリガーされた際に実行されます。
#
# @within advancement no_drop:inventory_changed

# プレイヤーを保存
    #declare tag no_drop.thrown_player
    tag @s add no_drop.thrown_player

# プレイヤーの死亡だった場合を除外
    execute unless entity @e[type=player, tag=no_drop.thrown_player] run return 0

# 周囲のドロップされたアイテムのうち条件を満たすものを取得
    #declare tag no_drop.thrown_item
    execute as @e[type=item, distance=..10] if data entity @s Thrower if data entity @s {Item: {tag: {data: ["no_drop"]}}} run tag @s add no_drop.thrown_item

# 保存されていたデータの取り出し
    function #oh_my_dat:please

    data modify storage no_drop: Inventory set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory

# 最新のデータを保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Inventory set from entity @s Inventory

# 条件を満たすドロップアイテムがあればドロップされた際の処理へ移動
    execute if entity @e[tag=no_drop.thrown_item] run function no_drop:dropped/index

# リセット
    tag @s remove no_drop.thrown_player

# 進捗剥奪
    #declare advancement no_drop:inventory_changed
    advancement revoke @s only no_drop:inventory_changed
