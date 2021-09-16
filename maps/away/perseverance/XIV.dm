//Made by Domic(mapping, coding, spriting), Sibg (some mapping), S m i l e (spriting) and DoctorDerp (spriting).

/datum/map_template/ruin/away_site/perseverance
	name =  "\improper XIV Perseverance"
	id = "awaysite_perseverance"
	description = "An echo of a long-gone era, corrupted by corporate greed and human hubris."
	suffixes = list("perseverance/Perseverance_1.dmm","perseverance/Perseverance_2.dmm")
	spawn_cost = 1
	shuttles_to_initialise = list(
		/datum/shuttle/autodock/overmap/mining,
		/datum/shuttle/autodock/overmap/cargo,
		/datum/shuttle/autodock/overmap/scout,
		/datum/shuttle/autodock/overmap/science,
		/datum/shuttle/autodock/ferry/xiv/central_lift,
		/datum/shuttle/autodock/ferry/xiv/whouse_lift,
		/datum/shuttle/autodock/ferry/xiv/eng_lift
	)
	area_usage_test_exempted_root_areas = list()
	apc_test_exempt_areas = list(
		//a
	)

#include "XIV_areas.dm"
#include "XIV_overmap.dm"
#include "XIV_shuttles.dm"
#include "XIV_elevators.dm"
#include "XIV_access.dm"

#include "code/XIV_minor.dm"
#include "code/XIV_clothes.dm"
#include "code/XIV_atmos.dm"
#include "code/XIV_vent.dm"
#include "code/XIV_blackbox.dm"
#include "code/XIV_bsdrive.dm"
