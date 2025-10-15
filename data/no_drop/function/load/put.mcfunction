#> no_drop/load/put
#
# @input
#   slot_name: string - 復元するアイテムスロット

# 復元
    summon armor_stand ~ ~ ~ {Invisible: true, Marker: true, Tags: ["NoDrop.ItemStackLoader"]}

    data modify entity @n[tag=NoDrop.ItemStackLoader] equipment.saddle set from storage no_drop: previous

    $item replace entity @s $(slot_name) from entity @n[tag=NoDrop.ItemStackLoader] saddle

    kill @n[tag=NoDrop.ItemStackLoader]
