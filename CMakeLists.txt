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
        )

add_custom_command(TARGET cart_in_warehouse
        COMMAND echo "[MOVE] CART,WAREHOUSE" >>plan
        )

add_custom_command(TARGET cart_in_shipment
        COMMAND echo "[MOVE] CART,SHIPPMENT" >>plan
        )

#===========

add_custom_target(load_parts)

add_custom_command(TARGET load_parts
        COMMAND echo "[PEOPLE] Load Cart" >>plan
        COMMENT "[JOIN] CART EXTR1 EXTR2")

add_custom_target(robogripper)

add_custom_command(TARGET robogripper
        COMMAND echo "[JOIN] ROB GRIP" >>plan
        COMMENT "[JOIN] ROB GRIP")

add_custom_target(unload_extr1)

add_custom_command(TARGET unload_extr1
        COMMAND echo "[MOVE] EXTR1,TABLE" >>plan
        COMMENT "[MOVE] EXTR1 TABLE")

add_custom_target(unload_extr2)

add_custom_command(TARGET unload_extr2
        COMMAND echo "[MOVE] EXTR2,TABLE" >>plan
        COMMENT "[MOVE] EXTR2 TABLE")

add_custom_target(parts_on_table)

add_custom_command(TARGET parts_on_table
        COMMAND echo "[EVENT] PARTS ON TABLE" >>plan
        )

add_custom_target(build_chassis)

add_custom_command(TARGET build_chassis
        COMMAND echo "[JOIN] EXTR1,EXTR2" >>plan
        COMMAND echo "[EVENT] CHASSIS IS READY" >>plan
        )

add_custom_target(ship_chassis)

add_custom_command(TARGET ship_chassis
        COMMAND echo "[EVENT] CHASSIS SHIPPED" >>plan
        )

#=========

add_dependencies(product build_chassis ship_chassis)
add_dependencies(unload_extr1 cart_in_cell robogripper)
add_dependencies(unload_extr2 cart_in_cell robogripper)

add_dependencies(cart_in_cell load_parts)
add_dependencies(load_parts cart_in_warehouse)

add_dependencies(parts_on_table unload_extr1 unload_extr2)
add_dependencies(build_chassis parts_on_table)
add_dependencies(ship_chassis cart_in_shipment)
add_dependencies(cart_in_shipment build_chassis)




