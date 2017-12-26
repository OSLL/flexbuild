cmake_minimum_required(VERSION 3.5)

project("product")

add_custom_target(product)
add_custom_target(abilities)



add_custom_target(transport_ability
        DEPENDS cart_in_cell cart_in_warehouse cart_in_shipment)

file(GLOB available_abilities RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" ./abilities/*.ab)

foreach(fileName ${available_abilities})
    MESSAGE(STATUS "(!) Found ability: ${fileName}")
endforeach()

set(outfiles)

include_directories(abilities)



add_custom_command(TARGET product
        COMMAND
            echo "============Building target bash command..."
        DEPENDS ${available_abilities}
        COMMENT "Custom bla")

add_custom_command(TARGET abilities
        COMMAND
        echo "============Gathering abilities bash command..."
        COMMENT ">>Gathering abilities")

#=========== Transportation ====

add_custom_target(cart_in_cell)
add_custom_target(cart_in_warehouse)
add_custom_target(cart_in_shipment)

add_custom_command(TARGET cart_in_cell
        COMMAND echo "[MOVE] CART,CELL" >>plan
        COMMENT ">>[MOVE] cart to cell")

add_custom_command(TARGET cart_in_warehouse
        COMMAND
        COMMAND echo "[MOVE] cart_in_warehouse" >>plan
        COMMENT ">>[MOVE] cart to warehouse")

add_custom_command(TARGET cart_in_shipment
        COMMAND
        COMMAND echo "[MOVE] cart_in_warehouse" >>plan
        COMMENT ">>[MOVE] cart to warehouse")

#===========

add_custom_target(loading)

add_custom_command(TARGET loading
        DEPENDS cart_in_warehouse
        COMMAND echo "[PEOPLE] Load Cart" >>plan
        COMMENT "[JOIN] CART EXTR1 EXTR2")

add_custom_target(robogripper)

add_custom_command(TARGET robogripper
        COMMAND echo "[JOIN] ROB GRIP" >>plan
        COMMENT "[JOIN] ROB GRIP")

add_custom_target(unload_extr1)

add_custom_command(TARGET unload_extr1
        DEPENDS cart_in_cell
        COMMAND echo "[MOVE] EXTR1,TABLE" >>plan
        COMMENT "[MOVE] EXTR1 TABLE")

add_custom_target(unload_extr2)

add_custom_command(TARGET unload_extr2
        DEPENDS cart_in_cell
        COMMAND echo "[MOVE] EXTR2,TABLE" >>plan
        COMMENT "[MOVE] EXTR2 TABLE")

add_custom_target(parts_on_table)

add_custom_command(TARGET parts_on_table
        DEPENDS cart_in_cell
        COMMAND echo "[MOVE] EXTR2 TABLE"

        )

#=========

add_dependencies(product unload_extr1 unload_extr2)
add_dependencies(unload_extr1 cart_in_cell robogripper)
add_dependencies(unload_extr2 cart_in_cell robogripper)

add_dependencies(cart_in_cell loading)
add_dependencies(loading cart_in_warehouse)




