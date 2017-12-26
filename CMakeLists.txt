cmake_minimum_required(VERSION 3.5)

project("product")

add_custom_target(product)
add_custom_target(abilities)

add_custom_target(cart_in_cell1)
add_custom_target(cart_in_warehouse)
add_custom_target(cart_in_shipment)

add_custom_target(transport_ability
        DEPENDS cart_in_cell1 cart_in_warehouse cart_in_shipment)


function(apply_abilities)
    message(STATUS "Hello")
endfunction(apply_abilities)


file(GLOB available_abilities RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" ./abilities/*.ab)

foreach(fileName ${available_abilities})
    MESSAGE(STATUS "(!) Found ability: ${fileName}")
endforeach()

set(outfiles)

include_directories(abilities)

add_dependencies(product abilities transport_ability)


add_custom_command(TARGET product
        COMMAND
            echo "============Building target bash command..."
        DEPENDS ${available_abilities}
        COMMENT "Custom bla")

add_custom_command(TARGET cart_in_cell1
        COMMAND
        echo "============cart_in_cell1..."
        COMMENT "cart_in_cell1")

add_custom_command(TARGET abilities
        COMMAND
        echo "============Gathering abilities bash command..."
        COMMENT "Gathering abilities")


apply_abilities()


#===========


