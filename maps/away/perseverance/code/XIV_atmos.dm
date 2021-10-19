// A lot of this is a test to see if stuff is easier this way, results were okay, but using strongdmm makes it much easier so this is not really necessary
//I dont think I'm removing it anytime soon, though

//--------------------------AIRLOCKS----------------------------------

obj/machinery/door/airlock/external/bolted/xiv
	name = "Perseverance Exterior Access"
	frequency = 1379

/obj/machinery/embedded_controller/radio/airlock/airlock_controller/xiv
	frequency = 1379
	req_access = list ("ACCESS_XION")

obj/machinery/airlock_sensor/xiv
	frequency = 1379

obj/machinery/access_button/airlock_exterior/xiv
	frequency = 1379
	req_access = list ("ACCESS_XION")

obj/machinery/access_button/airlock_interior/xiv
	frequency = 1379
	req_access = list ("ACCESS_XION")

//-------------------------TANK CONTROL-------------------------------

obj/machinery/atmospherics/unary/vent_pump/tank/xiv
	pressure_checks = 2
	pressure_checks_default = 2
	use_power = 1
	internal_pressure_bound = 4000
	internal_pressure_bound_default = 4000
	pump_direction = 0

obj/machinery/atmospherics/unary/vent_pump/high_volume/xiv
	stock_part_presets = list(
		/decl/stock_part_preset/radio/receiver/vent_pump/tank = 1,
		/decl/stock_part_preset/radio/event_transmitter/vent_pump/tank = 1
	)
	controlled = FALSE
	external_pressure_bound = 0
	external_pressure_bound_default = 0
	icon_state = "map_vent_in"
	initialize_directions = 1
	internal_pressure_bound = 4000
	internal_pressure_bound_default = 4000
	pressure_checks = 2
	pressure_checks_default = 2
	pump_direction = 0
	use_power = 1

obj/machinery/atmospherics/unary/outlet_injector/preset
	frequency = 1441
	use_power = 1

//--------------------VENTILATION SYSTEMS-----------------------------

/obj/item/stock_parts/circuitboard/air_management/ventilation
	build_path = /obj/machinery/computer/air_control/xiv/ventilation

/obj/machinery/computer/air_control/xiv/ventilation
	name = "Vent control console"
	out_pressure_mode = 1

/obj/machinery/computer/air_control/xiv/ventilation/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1)
	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	data["systemname"] = name
	get_console_data()
	if(!ui)
		ui = new(user, src, ui_key, "ventcontrol.tmpl", data["systemname"], 800, 600)//custom template which is actually just a downgraded normal template, yay!
		ui.set_initial_data(data)
		ui.open()
		ui.set_auto_update(1)

/obj/machinery/atmospherics/unary/vent_pump/tank/xiv/ventilation
	pressure_checks = 1
	pressure_checks_default = 1
	use_power = 0//due to big power draw, best activated manually (up to approx. 1.5 MW, actually)

/obj/machinery/atmospherics/unary/vent_pump/tank/xiv/ventilation/inlet
	icon_state = "map_vent_out"
	id_tag = "ventilation_in"
	external_pressure_bound = 1.1 * ONE_ATMOSPHERE
	external_pressure_bound_default = 1.1 * ONE_ATMOSPHERE//turns out defaults don't matter at all when being operated by the air control computer, "default pressure" is always approx. 4500 kPa
	pump_direction = 1

/obj/machinery/atmospherics/unary/vent_pump/tank/xiv/ventilation/outlet
	icon_state = "map_vent_in"
	id_tag = "ventilation_out"
	external_pressure_bound = 0.9 * ONE_ATMOSPHERE
	external_pressure_bound_default = 0.9 * ONE_ATMOSPHERE

//--------------------------FUEL STUFF------------------------------

//storage tanks

obj/machinery/atmospherics/unary/outlet_injector/xiv/fuel
	icon_state = "off"
	use_power = 0

//fuel combustion chambers

obj/machinery/atmospherics/unary/vent_pump/high_volume/xiv/combust
	icon_state = "map_vent_out"
	external_pressure_bound = MAX_PUMP_PRESSURE
	external_pressure_bound_default = MAX_PUMP_PRESSURE
	use_power = 1
	pump_direction = 1
	pressure_checks = 1//check exterior only
	pressure_checks_default = 1

//experimental gas thruster

/obj/machinery/atmospherics/unary/engine/experimental
	name = "experimental rocket nozzle"
	desc = "Experimental rocket nozzle, expelling gas at hypersonic velocities to propell the ship."

/obj/machinery/atmospherics/unary/engine/experimental/calculate_thrust(datum/gas_mixture/propellant, used_part = 1)
	return round(sqrt(propellant.get_mass() * used_part) + (air_contents.return_pressure() / 10000),0.1)

/obj/item/stock_parts/circuitboard/unary_atmos/engine/experimental
	name = T_BOARD("experimental gas thruster")
	build_path = /obj/machinery/atmospherics/unary/engine/experimental
	origin_tech = list(TECH_POWER = 10, TECH_ENGINEERING = 10)
	additional_spawn_components = list(
		/obj/item/stock_parts/matter_bin = 1,
		/obj/item/stock_parts/micro_laser/ultra = 2,
		/obj/item/stock_parts/capacitor = 2)
