#> no_drop:save/only_cursor
#
# 軽量化のための縮小版関数

# ストレージの要求
    function #oh_my_dat:please

# データコピー用
    summon armor_stand 0.0 0.0 0.0 {Invisible: true, Marker: true, Tags: ["NoDrop.ItemStackHolder"]}

# リセット
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.cursor set value {}

# カーソルスロットの保存
    item replace entity @n[type=armor_stand, tag=NoDrop.ItemStackHolder, x=0, y=0, z=0, distance=..8] armor.head from entity @s player.cursor
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.cursor set from entity @n[type=armor_stand, tag=NoDrop.ItemStackHolder, x=0, y=0, z=0, distance=..8] equipment.head

# お掃除
    kill @n[type=armor_stand, tag=NoDrop.ItemStackHolder, x=0, y=0, z=0, distance=..8]
