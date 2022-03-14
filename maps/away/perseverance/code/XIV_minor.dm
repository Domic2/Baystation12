//all the minor overrides and a bunch of new stuff I decided not to put in a seperate thingy

/decl/flooring/reinforced/redgrid//blackgrid is black instead of red despite its red sprite in the map editor, so here's something that's actually red
	name = "processing strata"
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_base = "rcircuit"
	build_type = null
	flags = TURF_ACID_IMMUNE | TURF_CAN_BREAK | TURF_REMOVE_WRENCH
	can_paint = 1
	can_engrave = FALSE

/turf/simulated/floor/redgrid
	name = "mainframe floor"
	icon = 'icons/turf/flooring/circuit.dmi'
	icon_state = "rcircuit"
	light_outer_range = 2
	light_max_bright = 2
	light_color = COLOR_RED
	initial_flooring = /decl/flooring/reinforced/redgrid

/obj/machinery/door/airlock/hatch/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/autoname/command
	stripe_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/hatch/autoname/engineering
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/engineering
	stripe_color = COLOR_AMBER

/obj/machinery/door/airlock/autoname/atmos
	door_color = COLOR_AMBER
	stripe_color = COLOR_CYAN

/obj/machinery/door/airlock/autoname/command
	door_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/autoname/civilian
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/autonames
	stripe_color = COLOR_RED

/obj/machinery/door/airlock/autoname/supply
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/autoname/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_BOTTLE_GREEN

/obj/machinery/door/airlock/autoname/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/hatch/maintenance/ventilation
	name = "Ventilation Hatch"
	stripe_color = COLOR_ORANGE

// Autoname multitile glass airlocks
/obj/machinery/door/airlock/multi_tile/glass/autoname

/obj/machinery/door/airlock/multi_tile/glass/autoname/New()
	var/area/A = get_area(src)
	name = A.name
	..()

/obj/machinery/door/airlock/multi_tile/glass/autoname/engineering
	door_color = COLOR_AMBER
	stripe_color = COLOR_RED

/obj/machinery/door/airlock/multi_tile/glass/autoname/atmos
	door_color = COLOR_AMBER
	stripe_color = COLOR_CYAN

/obj/machinery/door/airlock/multi_tile/glass/autoname/civilian
	stripe_color = COLOR_CIVIE_GREEN

/obj/machinery/door/airlock/multi_tile/glass/autoname/medical
	door_color = COLOR_WHITE
	stripe_color = COLOR_DEEP_SKY_BLUE

/obj/machinery/door/airlock/multi_tile/glass/autoname/supply
	door_color = COLOR_PALE_ORANGE
	stripe_color = COLOR_BEASTY_BROWN

/obj/machinery/door/airlock/multi_tile/glass/autoname/command
	door_color = COLOR_COMMAND_BLUE
	stripe_color = COLOR_SKY_BLUE

/obj/machinery/door/airlock/multi_tile/glass/autoname/research
	door_color = COLOR_WHITE
	stripe_color = COLOR_BOTTLE_GREEN

///obj/machinery/computer
//	icon = 'maps/perseverance/icons/obj/computer.dmi'
// uncomment once derp does the sprites

/obj/item/device/radio/headset/contractor
	name = "contractor headset"
	desc = "A headset often used by contractors on ships where having a full communications system is simply too expensive."
	item_state = "cargo_headset" //not alt headset sprite because they look bad on other species
	icon_state = "cargo_headset"
	max_keys = 3

/obj/item/storage/belt/utility/full/XIV/New()
	..()
	new /obj/item/device/multitool(src)
	update_icon()

/obj/machinery/suit_cycler/mining/XIV
	req_access = list()

/obj/machinery/suit_cycler/engineering/alt/XIV
	req_access = list()

/obj/item/device/multitool
	icon = 'maps/away/perseverance/icons/obj/multitool.dmi'
	icon_state = "multitool"

// The ship has (furure code) been out of power for a bit, these are fairly good at showcasing that

/obj/item/cell/apc/empty
	charge = 0

/obj/item/cell/apc/low
	charge = 200

/obj/machinery/power/apc/XIV/empty
	cell_type = /obj/item/cell/apc/empty

/obj/machinery/power/apc/XIV/low
	cell_type = /obj/item/cell/apc/low

/obj/machinery/power/apc/high/empty
	cell_type = /obj/item/cell/high/empty

// Need these for wallframe spawners

/obj/structure/wall_frame/hull/white
	paint_color = COLOR_WHITE

/obj/structure/wall_frame/orange
	paint_color = COLOR_DARK_ORANGE

/obj/structure/wall_frame/titanium/prepainted
	paint_color = COLOR_GUNMETAL

/obj/effect/wallframe_spawn/titanium/prepainted
	name = "white reinforced wall frame window spawner"
	icon_state = "r-wingrille"
	frame_path = /obj/structure/wall_frame/titanium/prepainted

// For the fuel bay

/obj/effect/wallframe_spawn/reinforced/orange
	name = "white reinforced wall frame window spawner"
	icon_state = "r-wingrille"
	frame_path = /obj/structure/wall_frame/orange

// Setting these two up as hull should make them do the special space-facing decay effet. Addendum: no effect on wallframes
/obj/effect/wallframe_spawn/reinforced/hull/white
	name = "white reinforced wall frame window spawner"
	icon_state = "r-wingrille"
	frame_path = /obj/structure/wall_frame/hull/white

/turf/simulated/wall/r_wall/hull/white
	color = COLOR_WHITE

// This one is for areas which would be painted over regularly (in view of people, etc.)

/turf/simulated/wall/prepainted/white
	paint_color = COLOR_WHITE

/turf/simulated/wall/prepainted/hull
	paint_color = COLOR_CYAN_BLUE

/turf/simulated/wall/titanium/hull
	paint_color = COLOR_CYAN_BLUE

/turf/simulated/wall/r_titanium/black
	paint_color = COLOR_GUNMETAL

/turf/simulated/wall/titanium/orange
	paint_color = COLOR_DARK_ORANGE

/turf/simulated/wall/titanium/research
	paint_color = COLOR_RESEARCH

/turf/simulated/wall/r_wall/white
	paint_color = COLOR_WHITE

/turf/simulated/wall/r_wall/orange //for fuel tanks
	paint_color = COLOR_DARK_ORANGE

/turf/simulated/wall/ocp_wall/orange
	paint_color = COLOR_DARK_ORANGE

/turf/simulated/wall/ocp_wall/hull
	paint_color = COLOR_CYAN_BLUE

/turf/simulated/wall/ocp_wall/prepainted
	paint_color = COLOR_GUNMETAL

/obj/structure/closet/secure_closet/freezer/kitchen/XIV
	req_access = list()

/turf/simulated/floor/shuttle_ceiling/dark
	color = COLOR_GUNMETAL

/obj/structure/closet/secure_closet/freezer/empty
	name = "refrigerator"
	icon = 'icons/obj/closets/fridge.dmi'
	closet_appearance = null
	req_access = list()

/turf/simulated/floor/reinforced/airmix/XIV
	initial_gas = list(GAS_OXYGEN = 2 * MOLES_O2ATMOS, GAS_NITROGEN = 2 * MOLES_N2ATMOS)

// This is for the multi-z gas tanks

/turf/simulated/open/XIV/airmix
	initial_gas = list(GAS_OXYGEN = 2 * MOLES_O2ATMOS, GAS_NITROGEN = 2 * MOLES_N2ATMOS)

/turf/simulated/open/XIV/hydrogen
	initial_gas = list(GAS_HYDROGEN = ATMOSTANK_HYDROGEN)

/turf/simulated/open/XIV/oxygen
	initial_gas = list(GAS_OXYGEN = ATMOSTANK_OXYGEN)

/turf/simulated/open/XIV/carbon_dioxide
	initial_gas = list(GAS_CO2 = ATMOSTANK_CO2)

/turf/simulated/open/XIV/airless//for the aft fuel bay
	initial_gas = null

/turf/simulated/floor/tiled/techfloor/grid/airless
	initial_gas = null

/turf/simulated/floor/tiled/monotile/airless
	initial_gas = null

/turf/simulated/floor/tiled/dark/monotile/airless
	initial_gas = null

//SMES

/obj/machinery/power/smes/buildable/preset/XIV
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Main Engine output SMES, plus empty version
/obj/machinery/power/smes/buildable/preset/XIV/engine_main
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2,
		/obj/item/stock_parts/smes_coil/super_capacity =	 1)

/obj/machinery/power/smes/buildable/preset/XIV/engine_main/empty
	_fully_charged = FALSE

// Main Engine internal SMES, for powering the gyrotron and the actual room, doesn't need super high capacity, but it does need I/O
/obj/machinery/power/smes/buildable/preset/XIV/engine_central
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 1)

// Shuttle SMES, higher capacity
/obj/machinery/power/smes/buildable/preset/XIV/shuttles
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_capacity =	 1)

//Crates

/obj/structure/closet/crate/actual_radiation_gear
	name = "radioactive gear crate"
	desc = "A crate with a radiation sign on it."
	closet_appearance = /decl/closet_appearance/crate/radiation

/obj/structure/closet/crate/actual_radiation_gear/WillContain()
	return list(/obj/item/clothing/suit/radiation = 4,
				/obj/item/clothing/head/radiation = 4) //other radiation closet only gives the suit ??? What???

/obj/structure/closet/crate/fusion
	name = "fusion fuel crate"
	desc = "A crate with a radiation sign on it."
	closet_appearance = /decl/closet_appearance/crate/radiation

/obj/item/stack/material/deuterium/ten //needed for next part
	amount = 10

/obj/structure/closet/crate/fusion/WillContain()
	return list(/obj/item/stack/material/deuterium/ten = 10,
				/obj/item/stack/material/tritium/ten = 4)

//Blue double emergency tank

/obj/item/tank/emergency/oxygen/double/blue
	icon = 'maps/away/perseverance/icons/obj/tanks.dmi'
	icon_state = "emergency_double_blue"

//Should be removed at some point, but it works and should not cause any trouble

obj/machinery/conveyor/XIV/shuttletosci
	id = "shuttletosci"

obj/machinery/conveyor_switch/oneway/XIV/shuttletosci
	id = "shuttletosci"

obj/machinery/conveyor/XIV/scitoshuttle
	id = "scitoshuttle"

obj/machinery/conveyor_switch/oneway/XIV/scitoshuttle
	id = "scitoshuttle"

obj/machinery/atmospherics/unary/outlet_injector/waste
	volume_rate = 700
	icon_state = "on"
	use_power = 1

/mob/Check_Dense_Object() //this is from mob_movement.dm, there's a bug where open spaces are not checked so magboots treat them as solid objects they can grip. That's a nope from me, time to override

	var/shoegrip = Check_Shoegrip()

	for(var/turf/simulated/T in trange(1,src)) //we only care for non-space turfs
		if(T.density)	//walls work
			return 1
		else
			var/area/A = T.loc
			if(A.has_gravity || (shoegrip && !istype(T, /turf/simulated/open)))//only change I made is here. Works like a charm
				return 1

	for(var/obj/O in orange(1, src))
		if(istype(O, /obj/structure/lattice))
			return 1
		if(O && O.density && O.anchored)
			return 1

	return 0

/obj/structure/closet/toolcloset/XIV/New()//normal closet, with removed insulateds
	..()
	if(prob(40))
		new /obj/item/clothing/suit/storage/hazardvest(src)
	if(prob(70))
		new /obj/item/device/flashlight(src)
	if(prob(70))
		new /obj/item/screwdriver(src)
	if(prob(70))
		new /obj/item/wrench(src)
	if(prob(70))
		new /obj/item/weldingtool(src)
	if(prob(70))
		new /obj/item/crowbar(src)
	if(prob(70))
		new /obj/item/wirecutters(src)
	if(prob(70))
		new /obj/item/device/t_scanner(src)
	if(prob(20))
		new /obj/item/storage/belt/utility(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(30))
		new /obj/item/stack/cable_coil/random(src)
	if(prob(20))
		new /obj/item/device/multitool(src)
	if(prob(40))
		new /obj/item/clothing/head/hardhat(src)

/obj/structure/closet/excavation/XIV/New()//normal excavation closet, with a bit less gear
	..()
	new /obj/item/storage/belt/archaeology(src)
	new /obj/item/storage/excavation(src)
	new /obj/item/device/flashlight(src)
	new /obj/item/device/ano_scanner(src)
	new /obj/item/device/depth_scanner(src)
	new /obj/item/device/core_sampler(src)
	new /obj/item/device/gps(src)
	new /obj/item/clothing/glasses/meson(src)
	new /obj/item/pickaxe(src)
	new /obj/item/device/measuring_tape(src)
	new /obj/item/pickaxe/xeno/hand(src)
	new /obj/item/storage/bag/fossils(src)
	new /obj/item/hand_labeler(src)

//uses New() instead of Initialize(), and it does not work (when initialized). This fixes it.
/turf/space/transit/east/Initialize()
	..()
	if(!phase_shift_by_y)
		phase_shift_by_y = get_cross_shift_list(15)

	var/y_shift = phase_shift_by_y[src.y % (phase_shift_by_y.len - 1) + 1]
	var/transit_state = (world.maxx - src.x + y_shift)%15 + 1

	icon_state = "speedspace_ew_[transit_state]"

/obj/machinery/light/navigation//check your layers!
	layer = MOUSETRAP_LAYER

/obj/structure/plasticflaps/airtight/Initialize() // Airtight my ass, lets make this actually work
	var/turf/T = get_turf(loc)
	if(T)
		T.blocks_air = 1

/obj/machinery/computer/rdconsole/xiv
	name = "robotics fabricator console"
	id = 4
