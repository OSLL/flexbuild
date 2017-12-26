cmake_minimum_required(VERSION 3.5)

#=========== Kinematics abilities ====

#equipment

add_custom_target(kin.gripper)

add_custom_command(TARGET kin.gripper
        COMMAND echo "[KIN.INIT] GRIPER" >>plan
        )

add_custom_target(kin.manipulator)

add_custom_command(TARGET kin.manipulator
        COMMAND echo "[KIN.INIT] MANIPULATOR" >>plan
        )

add_custom_target(kin.robogripper)
add_dependencies(kin.robogripper kin.gripper kin.manipulator)

add_custom_command(TARGET kin.robogripper
        COMMAND echo "[KIN.JOIN] ROB,GRIP" >>plan
        )

#abilities




