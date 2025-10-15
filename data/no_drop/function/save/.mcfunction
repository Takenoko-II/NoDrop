#> no_drop:save/

# ストレージの要求
    function oh_my_dat:please

# データのリセット
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop set value {}

# コンテナを保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.inventory set from entity @s Inventory

# 防具とオフハンドの保存
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.equipment set from entity @s equipment

# データコピー用
    summon armor_stand ~ ~ ~ {Invisible: true, Marker: true, Tags: ["NoDrop.ItemStackHolder"]}

# カーソルスロットの保存
    item replace entity @n[type=armor_stand, tag=NoDrop.ItemStackHolder] armor.head from entity @s player.cursor
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.cursor set from entity @n[type=armor_stand, tag=NoDrop.ItemStackHolder] equipment.head

# お掃除
    kill @n[type=armor_stand, tag=NoDrop.ItemStackHolder]
