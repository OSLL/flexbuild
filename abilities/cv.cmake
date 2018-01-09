cmake_minimum_required(VERSION 3.5)

#=========== CV abilities ====

#equipment

add_custom_target(cv.camera1)
add_custom_target(cv.camera2)
add_custom_target(cv.camera3)
add_custom_target(cv.calibration)

add_custom_command(TARGET cv.camera1
        COMMAND echo "[CV.INIT] CAMERA1" >>plan
        )
add_custom_command(TARGET cv.camera2
        COMMAND echo "[CV.INIT] CAMERA1" >>plan
        )
add_custom_command(TARGET cv.camera3
        COMMAND echo "[CV.INIT] CAMERA1" >>plan
        )

add_custom_command(TARGET cv.calibration
        COMMAND echo "[CV.CALIBRATE] " >>plan
        )

#abilities

add_custom_target(cv.localize)
add_dependencies(cv.localize cv.camera1 cv.camera2 cv.camera3 cv.calibration)


add_custom_command(TARGET cv.localize
        COMMAND echo "[CV.LOCALIZE] PARTS" >>plan
        )

