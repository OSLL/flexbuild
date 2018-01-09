cmake_minimum_required(VERSION 3.5)

include(parts/battery_parts.cmake)

add_custom_target(front_interface_structure)
add_dependencies(right_cast central_cast left_cast)
add_custom_command(TARGET front_interface_structure
        COMMAND echo "[KIN.JOIN] right_cast,central_cast, left_cast" >>plan
        COMMAND echo "[EVENT] front interface structure is ready" >>plan
        )

add_custom_target(rear_interface_structure)
add_dependencies(right_cast central_cast left_cast)
add_custom_command(TARGET rear_interface_structure
        COMMAND echo "[KIN.JOIN] right_cast,central_cast, left_cast" >>plan
        COMMAND echo "[EVENT] rear_interface_structure is ready" >>plan
        )


add_custom_target (front_central_structure)
add_dependencies(front_interface_structure extrusion)
add_custom_command(TARGET front_central_structure
          COMMAND echo "[KIN.JOIN] front_interface_structure, extrusion" >>plan
          COMMAND echo "[EVENT] front central structure is ready" >>plan
          )


add_custom_target (central_structure)
add_dependencies (front_central_structure rear_interface_structure)
add_custom_command(TARGET  central_structure
          COMMAND echo "[KIN.JOIN] front_central_structure,rear_interface_structure" >>plan
          COMMAND echo "[EVENT] front_central_structure is ready" >>plan
          )

add_custom_target (adhesive_floor_panel)
add_dependencies (glue floor_panel)
add_custom_command(TARGET adhesive floor_panel
          COMMAND echo "[KIN.JOIN] glue, floor_panel" >>plan
          COMMAND echo "[EVENT] adhesive floor panel is ready" >>plan
          )

add_custom_target (central_structure_with_floor_panel)
add_dependencies (central_structure adhesive_floor_panel)
add_custom_command(TARGET central_structure_with_floor_panel
          COMMAND echo "[KIN.JOIN] adhesive_floor_panel, central_structure" >>plan
          COMMAND echo "[EVENT] central_structure_with_floor_panel is ready" >>plan
          )


add_custom_target (fasten_floor_panel)
add_dependencies(bolt central_structure_with_floor_panel)
add_custom_command(TARGET fasten_floor_panel
         COMMAND echo "[KIN.JOIN] bolt, central_structure_with_floor_panel" >>plan
         COMMAND echo "[EVENT] fasten_floor_panel is ready" >>plan
          )

add_custom_target (invert_central_structure)
add_dependencies (central_structure_with_floor_panel trajectory)
add_custom_command(TARGET invert_central_structure
          COMMAND echo "[KIN.MOVE] central_structure_with_floor_panel,trajectory" >>plan
          COMMAND echo "[EVENT] invert_central_structure is ready" >>plan
          )

add_custom_target (adhesive_lower_panel)
add_dependencies (glue lower_panel)
add_custom_command(TARGET adhesive_lower_panel
          COMMAND echo "[KIN.JOIN] glue, lower_panel" >>plan
          COMMAND echo "[EVENT] adhesive_lower_panel is ready" >>plan
          )

add_custom_target (central_structure_with_lower_panel)
add_dependencies (central_structure_with_lower_panel invert_central_structure)
add_custom_command(TARGET central_structure_with_lower_panel, invert_central_structure
          COMMAND echo "[KIN.JOIN] adhesive_lower_panel, invert_central_structure_with_floor_panel" >>plan
          COMMAND echo "[EVENT] central_structure_with_lower_panel" >>plan
          )


add_custom_target (fasten_central_structure_with_lower_panel)
add_dependencies (bolt central_structure_with_lower_panel)
add_custom_command(TARGET fasten_central_structure_with_lower_panel
          COMMAND echo "[KIN.JOIN] bolt,central_structure_with_lower_panel" >>plan
          COMMAND echo "[EVENT] fasten_central_structure is ready" >>plan
          )



#add_custom_target (build_battarey)
