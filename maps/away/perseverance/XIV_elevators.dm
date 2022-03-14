/datum/shuttle/autodock/ferry/xiv
	flags = SHUTTLE_FLAGS_PROCESS
	defer_initialisation = TRUE
	ceiling_type = null
	knockdown = 0
	warmup_time = 3

//central hallway

/obj/machinery/computer/shuttle_control/lift/xiv/central
	name = "cargo lift controls"
	shuttle_tag = "Perseverance Central Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 1

/datum/shuttle/autodock/ferry/xiv/central_lift
	name = "Perseverance Central Lift"
	shuttle_area = /area/ship/perseverance/lift
	waypoint_station = "nav_xiv_cargo_lift_bottom"
	waypoint_offsite = "nav_xiv_cargo_lift_top"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'

/obj/effect/shuttle_landmark/lift/xiv/central_top
	name = "Ventilation Deck"
	landmark_tag = "nav_xiv_cargo_lift_top"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/ship/perseverance/lifttop
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/xiv/central_bottom
	name = "Operations Deck"
	landmark_tag = "nav_xiv_cargo_lift_bottom"
	base_area = /area/ship/perseverance/hall/chall
	base_turf = /turf/simulated/floor/plating

//warehouse

/obj/machinery/computer/shuttle_control/lift/xiv/whouse
	name = "cargo lift controls"
	shuttle_tag = "Cargo Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 1

/datum/shuttle/autodock/ferry/xiv/whouse_lift
	name = "Cargo Lift"
	shuttle_area = /area/ship/perseverance/whouselift
	waypoint_station = "nav_xiv_cargo_lift_cargo_bottom"
	waypoint_offsite = "nav_xiv_cargo_lift_cargo_top"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'

/obj/effect/shuttle_landmark/lift/xiv/whouse_top
	name = "Ventilation Deck"
	landmark_tag = "nav_xiv_cargo_lift_cargo_top"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/ship/perseverance/whouselifttop
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/xiv/whouse_bottom
	name = "Operations Deck"
	landmark_tag = "nav_xiv_cargo_lift_cargo_bottom"
	base_area = /area/ship/perseverance/cargobay
	base_turf = /turf/simulated/floor/plating

//engineering

/obj/machinery/computer/shuttle_control/lift/xiv/eng
	name = "cargo lift controls"
	shuttle_tag = "Engineering Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = 1

/datum/shuttle/autodock/ferry/xiv/eng_lift
	name = "Engineering Lift"
	shuttle_area = /area/ship/perseverance/englift
	waypoint_station = "nav_xiv_cargo_lift_eng_bottom"
	waypoint_offsite = "nav_xiv_cargo_lift_eng_top"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'

/obj/effect/shuttle_landmark/lift/xiv/eng_top
	name = "Ventilation Deck"
	landmark_tag = "nav_xiv_cargo_lift_eng_top"
	flags = SLANDMARK_FLAG_AUTOSET
	base_area = /area/ship/perseverance/englifttop
	base_turf = /turf/simulated/open

/obj/effect/shuttle_landmark/lift/xiv/eng_bottom
	name = "Operations Deck"
	landmark_tag = "nav_xiv_cargo_lift_eng_bottom"
	base_area = /area/ship/perseverance/hall/ehall
	base_turf = /turf/simulated/floor/plating