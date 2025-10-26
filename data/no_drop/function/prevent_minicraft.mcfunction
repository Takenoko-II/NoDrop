#> no_drop:prevent_minicraft
#
# 今はもう使っていない関数

# 進捗発火の阻止
    tag @s add NoDrop.AdvancementFirePreventing

# アイテム保存用
    summon armor_stand 0.0 0.0 0.0 {Tags: ["NoDrop.ItemStackLoader"]}

# クラフトスロットの保存
    execute if items entity @s player.crafting.0 *[custom_data~{no_drop:{}}] run data modify storage no_drop: temporary_crafting_slot_id set value 0
    execute if items entity @s player.crafting.0 *[custom_data~{no_drop:{}}] run item replace entity @n[tag=NoDrop.ItemStackLoader] armor.head from entity @s player.crafting.0

    execute if items entity @s player.crafting.1 *[custom_data~{no_drop:{}}] run data modify storage no_drop: temporary_crafting_slot_id set value 1
    execute if items entity @s player.crafting.1 *[custom_data~{no_drop:{}}] run item replace entity @n[tag=NoDrop.ItemStackLoader] armor.head from entity @s player.crafting.1
    
    execute if items entity @s player.crafting.2 *[custom_data~{no_drop:{}}] run data modify storage no_drop: temporary_crafting_slot_id set value 2
    execute if items entity @s player.crafting.2 *[custom_data~{no_drop:{}}] run item replace entity @n[tag=NoDrop.ItemStackLoader] armor.head from entity @s player.crafting.2

    execute if items entity @s player.crafting.3 *[custom_data~{no_drop:{}}] run data modify storage no_drop: temporary_crafting_slot_id set value 3
    execute if items entity @s player.crafting.3 *[custom_data~{no_drop:{}}] run item replace entity @n[tag=NoDrop.ItemStackLoader] armor.head from entity @s player.crafting.3

# カーソルとクラフトスロットのアイテムを交換
    execute if data storage no_drop: {temporary_crafting_slot_id: 0} run item replace entity @s player.crafting.0 from entity @s player.cursor
    execute if data storage no_drop: {temporary_crafting_slot_id: 1} run item replace entity @s player.crafting.1 from entity @s player.cursor
    execute if data storage no_drop: {temporary_crafting_slot_id: 2} run item replace entity @s player.crafting.2 from entity @s player.cursor
    execute if data storage no_drop: {temporary_crafting_slot_id: 3} run item replace entity @s player.crafting.3 from entity @s player.cursor

    item replace entity @s player.cursor from entity @n[tag=NoDrop.ItemStackLoader] armor.head

# リセット
    kill @n[tag=NoDrop.ItemStackLoader]

    data remove storage no_drop: temporary_crafting_slot_id

    tag @s remove NoDrop.AdvancementFirePreventing
