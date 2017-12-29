add_custom_target(right_cast)
add_custom_command(TARGET right_cast COMMAND echo "use part right_cast" >>plan)


add_custom_target(left_cast)
add_custom_command(TARGET left_cast COMMAND echo "use part left_cast" >>plan)

add_custom_target(central_cast)
add_custom_command(TARGET central_cast COMMAND echo "use part central_cast" >>plan)

add_custom_target(extrusion)
add_custom_command(TARGET extrusion COMMAND echo "use part extrusion" >>plan)
