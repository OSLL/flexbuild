cmake_minimum_required(VERSION 3.5)

add_custom_target (build_battarey)

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] right corner casting,central casting, left corner casting >>plan
        COMMAND echo "[EVENT] front interface structure is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] "right corner casting","central casting", "left corner casting" >>plan
        COMMAND echo "[EVENT] rear interface structure is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] front interface structure, extrusion >>plan
        COMMAND echo "[EVENT] front central structure is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] front central structure, rear interface structure >>plan
        COMMAND echo "[EVENT] central structure is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] glue.123, floor panel >>plan
        COMMAND echo "[EVENT] adhesive floor panel is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] adhesive floor panel, central structure >>plan
        COMMAND echo "[EVENT] floor panel on central structure is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] bolt, floor panel on central structure >>plan
        COMMAND echo "[EVENT] fasten floor panel to central structure is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] glue, lower panel >>plan
        COMMAND echo "[EVENT] adhesive lower panel is ready" >>plan
        )

add_custom_command(TARGET build_battarey
         COMMAND echo "[KIN.MOVE] fasten floor panel to central structure >>plan
         COMMAND echo "[EVENT] invert central structure is ready" >>plan

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] adhesive lower panel, invert central structure >>plan
        COMMAND echo "[EVENT] adhesive central structure is ready" >>plan
        )

add_custom_command(TARGET build_battarey
        COMMAND echo "[KIN.JOIN] bolt, adhesive central structure is ready >>plan
        COMMAND echo "[EVENT]  central structure is ready" >>plan
        )