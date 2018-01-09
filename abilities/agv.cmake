cmake_minimum_required(VERSION 3.5)

#=========== Transportation abilities ====

add_custom_target(agv.cart_in_cell)
add_custom_target(agv.cart_in_warehouse)
add_custom_target(agv.cart_in_shipment)

add_custom_command(TARGET agv.cart_in_cell
        COMMAND echo "[AGV.MOVE] CART,CELL" >>plan
        )

add_custom_command(TARGET agv.cart_in_warehouse
        COMMAND echo "[AGV.MOVE] CART,WAREHOUSE" >>plan
        )

add_custom_command(TARGET agv.cart_in_shipment
        COMMAND echo "[AGV.MOVE] CART,SHIPPMENT" >>plan
        )
