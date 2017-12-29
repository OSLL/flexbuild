add_custom_target(right_cast)
add_custom_command(TARGET right_cast COMMAND echo "use part right_cast" >>plan)

add_custom_target(left_cast)
add_custom_command(TARGET left_cast COMMAND echo "use part left_cast" >>plan)

add_custom_target(central_cast)
add_custom_command(TARGET central_cast COMMAND echo "use part central_cast" >>plan)

add_custom_target(extrusion)
add_custom_command(TARGET extrusion COMMAND echo "use part extrusion" >>plan)

add_custom_target(glue)
add_custom_command(TARGET glue COMMAND echo "glue" >>plan)

add_custom_target(floor_panel)
add_custom_command(TARGET floor_panel COMMAND echo "floor_panel" >>plan)

add_custom_target(bolt)
add_custom_command(TARGET bolt COMMAND echo "bolt" >>plan)

add_custom_target(lower_panel)
add_custom_command(TARGET lower_panel COMMAND echo "lower_panel" >>plan)

add_custom_target(trajectory)
add_custom_command(TARGET trajectory COMMAND echo "trajectory" >>plan)
