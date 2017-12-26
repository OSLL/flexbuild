cmake_minimum_required(VERSION 3.5)

include(abilities/agv.cmake)
include(abilities/kinematics.cmake)


project("product")

add_custom_target(product)

add_custom_command(TARGET product
        COMMAND echo "[EVENT] PRODUCT IS READY" >>plan
        )

#===========

add_custom_target(load_parts)

add_custom_command(TARGET load_parts
        COMMAND echo "[PEOPLE] Load Cart" >>plan
        COMMAND echo "[EVENT] PARTS ARE LOADED" >>plan
        )


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

add_dependencies(unload_extr1 agv.cart_in_cell kin.robogripper)
add_dependencies(unload_extr2 agv.cart_in_cell kin.robogripper)

add_dependencies(agv.cart_in_cell load_parts)
add_dependencies(load_parts agv.cart_in_warehouse)

add_dependencies(parts_on_table unload_extr1 unload_extr2)
add_dependencies(build_chassis parts_on_table kin.joinparts)
add_dependencies(kin.joinparts parts_on_table)

add_dependencies(ship_chassis agv.cart_in_shipment)
add_dependencies(agv.cart_in_shipment build_chassis)

