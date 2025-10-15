#> no_drop:load/other

# head
    data modify storage no_drop: previous set from storage no_drop: equipment.head

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.equipment.head

    data modify storage no_drop: slot_name set value armor.head

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# chest
    data modify storage no_drop: previous set from storage no_drop: equipment.chest

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.equipment.chest

    data modify storage no_drop: slot_name set value armor.chest

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# legs
    data modify storage no_drop: previous set from storage no_drop: equipment.legs

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.equipment.legs

    data modify storage no_drop: slot_name set value armor.legs

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# feet
    data modify storage no_drop: previous set from storage no_drop: equipment.feet

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.equipment.feet

    data modify storage no_drop: slot_name set value armor.feet

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# offhand
    data modify storage no_drop: previous set from storage no_drop: equipment.offhand

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.equipment.offhand

    data modify storage no_drop: slot_name set value weapon.offhand

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# crafting.0
    data modify storage no_drop: previous set from storage no_drop: crafting[0]

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.crafting[0]

    data modify storage no_drop: slot_name set value player.crafting.0

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# crafting.1
    data modify storage no_drop: previous set from storage no_drop: crafting[1]

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.crafting[1]

    data modify storage no_drop: slot_name set value player.crafting.1

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# crafting.2
    data modify storage no_drop: previous set from storage no_drop: crafting[2]

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.crafting[2]

    data modify storage no_drop: slot_name set value player.crafting.2

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# crafting.3
    data modify storage no_drop: previous set from storage no_drop: crafting[3]

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.crafting[3]

    data modify storage no_drop: slot_name set value player.crafting.3

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# cursor
    data modify storage no_drop: previous set from storage no_drop: cursor

    data modify storage no_drop: current set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].no_drop.cursor

    data modify storage no_drop: slot_name set value player.cursor

    execute if function no_drop:load/compare run return run function no_drop:load/finalize

# フォールバック
    return fail
