/obj/effect/overmap/visitable/ship/Perseverance
	name = "XIV Perseverance"
	desc = "Superreflective hull interfering with sensor readings. Ship parameters unknown. Exterior writing reads 'XIV Perseverance'."
	fore_dir = NORTH
	vessel_mass = 100000
	burn_delay = 5 SECONDS
	hide_from_reports = TRUE
	known = FALSE

	initial_restricted_waypoints = list(
		"Chimera" = list("nav_dock_mining"),
		"Marshal" = list("nav_dock_cargo"),
		"Dagger"  = list("nav_dock_scout"),
		"Phobos"  = list("nav_dock_science")
	)

	initial_generic_waypoints = list(
		//everyone can come here
		"nav_upper_fore",
		"nav_upper_pmid",
		"nav_upper_smid",
		"nav_upper_aft",
		"nav_bottom_pfore",
		"nav_bottom_sfore",
		"nav_bottom_paft",
		"nav_bottom_saft"
	)

/obj/effect/overmap/visitable/ship/landable/mining
	name = "XIV Chimera"
	desc = "An outdated configuration of the VTA-5 short range mining shuttle. Exterior writing reads 'XIV Chimera'. No transponder signal detected."
	shuttle = "Chimera"
	max_speed = 1/(1 SECONDS)
	burn_delay = 5 SECONDS
	vessel_mass = 7000
	fore_dir = WEST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL
	moving_state = "ship_moving"

/obj/effect/overmap/visitable/ship/landable/cargo
	name = "XIV Marshal"
	desc = "A V-65 Ox long distance cargo shuttle designed for use within civilized space. Exterior writing reads 'XIV Marshal'. No transponder signal detected."
	shuttle = "Marshal"
	max_speed = 1/(1 SECONDS)
	burn_delay = 3 SECONDS
	vessel_mass = 5000
	fore_dir = WEST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/scout
	name = "SFV Dagger"
	desc = "A powerful interceptor shuttle belonging to the Sol Central Government Fleet. Exterior writing reads 'SFV Dagger'. No transponder signal detected."
	shuttle = "Dagger"
	max_speed = 4/(1 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 10000
	fore_dir = EAST
	skill_needed = SKILL_ADEPT
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/science
	name = "XIV Phobos"
	desc = "An E-CB science shuttle commonly used for small-scale archeology and exploration projects. Exterior writing reads 'XIV Phobos'. No transponder signal detected."
	shuttle = "Phobos"
	max_speed = 1/(1 SECONDS)
	burn_delay = 3 SECONDS
	vessel_mass = 5000
	fore_dir = EAST
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL
