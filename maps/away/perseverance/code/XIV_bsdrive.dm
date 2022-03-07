/obj/machinery/bluespacedrive
	name = "Bluespace drive"
	desc = "This complex device permits safe entry into bluespace. "
	icon = 'maps/away/perseverance/icons/bsdrive.dmi'
	icon_state = "dmdrive_1"
	density = 1
	anchored = 1
	var/phcheck = null//0 = no phoron, 1 = enough phoron, 2 = too much phoron
	var/mode = 1 //2 is active, actively takes phoron from the air, takes minor coordination for a big time save. A bit risky.
	// 1 is passive, it requires some phoron to be present only when jumping, but also needs a much longer spoolup time .
	var/bsdrivestatus = null

/obj/machinery/bluespacedrive/Process()

	var/turf/T = get_turf(src)
	var/datum/gas_mixture/air = T.return_air()
	var/phinair = air.gas[GAS_PHORON]

	if (phinair > 55)
		phcheck = 1
		if (phinair > 55)
			overlays = list("ind1")
		if (phinair > 65)
			overlays = list("ind2")
		if (phinair > 75)
			overlays = list("ind3")
		if (phinair > 85)
			overlays = list("ind4")
		if (phinair > 95)
			if (mode == 2)
				bigboom()
				return
			overlays = list("uhoh")
	else
		phcheck = 0
		overlays = list("ind0")

	if (air.total_moles - air.gas[GAS_PHORON] > 10)
		contaminated = 1
		if (mode == 2)
			bigboom()
			return
		overlays = list("uhoh")
	else
		contaminated = 0

	if (mode == 2)
		air.remove(air.total_moles * 0.2)

		for(var/mob/living/carbon/human/subject in view(src, 5))
			var/obj/item/organ/internal/eyes/eyes = subject.internal_organs_by_name[BP_EYES]
			if (!eyes)
				continue
			if (BP_IS_ROBOTIC(eyes))
				continue
			if (subject.has_meson_effect())
				continue
			var/effect = max(0, min(200, 9 * sqrt( 1 / max(1,get_dist(subject, src)))) )
			subject.adjust_hallucination(effect, 0.25 * effect)

/obj/machinery/bluespacedrive/proc/open()

	GLOB.global_announcer.autosay("WARNING: BLUESPACE DRIVE ENTERING RAPID REACTION MODE.", "Auxiliary Bluespace Monitor")

	mode = 2
	playsound(src.loc,'sound/machines/blastdoor_open.ogg', 50, 1)
	icon_state = "dmdrive_2"
	flick("dmdrive_opening", src)

/obj/machinery/bluespacedrive/proc/close()

	playsound(src.loc, 'sound/machines/blastdoor_close.ogg', 50, 1)
	icon_state = "dmdrive_1"
	flick("dmdrive_closing", src)
	mode = 1

/obj/machinery/bluespacedrive/proc/bigboom()

	GLOB.global_announcer.autosay("ERROR: BLUESPACE TEATHER SEVERED. CONTACT AN ENGINEER IMMIDEATELY.", "Auxiliary Bluespace Monitor")
	mode = 0
	var/turf/T = get_turf(src)
	var/list/affected_z = GetConnectedZlevels(T.z)

//knockdown
	for(var/z in affected_z)
		SSradiation.z_radiate(locate(1, 1, z), DETONATION_RADS, 1)

	for(var/mob/living/mob in GLOB.living_mob_list_)
		var/turf/TM = get_turf(mob)
		if(!TM)
			continue
		if(!(TM.z in affected_z))
			continue

		mob.Weaken(4)
		to_chat(mob, "<span class='danger'>An invisible force slams you against the ground!</span>")

	empulse(T, 10, 90)

	spawn(0)
		explosion(T, 1.5, 3, 6, 12, 1)
		qdel(src)

//physical interactions

/obj/machinery/bluespacedrive/attackby(obj/item/P as obj, mob/user as mob)

	if(isWrench(P))
		if(bsdrivestatus > -1 && bsdrivestatus < 2)
			user.visible_message("[user] attempts to unwrench the anchoring bolts on the [src], but the safety system keeps them down.", "You try unwrenching the anchoring bolts, but the safety system keeps them locked in place.")
			return
		if(anchored == 1)
			user.visible_message("[user] begins unwrenching the anchoring bolts on the [src].", "You begin unwrenching the anchoring bolts...")
		else
			user.visible_message("[user] begins wrenching the anchoring bolts on the [src].", "You begin wrenching the anchoring bolts...")
		if(do_after(user, 50, src))
			if(!src || !user) return
			if(anchored == 1)
				user.visible_message("[user] unwrenches the anchoring bolts on the [src].", "You unwrench the anchoring bolts.")
				log_and_message_admins("[user] unwrenched the blespace drive at [x], [y], [z]")
				anchored = 0
			else
				user.visible_message("[user] wrenches the anchoring bolts on the [src].", "You wrench the anchoring bolts.")
				log_and_message_admins("[user] wrenched the blespace drive at [x], [y], [z]")
				anchored = 1

/obj/machinery/bluespacedrive/physical_attack_hand(mob/user)

	if (anchored == TRUE)
		user.visible_message("<span class=\"warning\">[user] flips the control switch on the [src].</span>", "<span class=\"warning\">You flip the control switch.")
		if (mode == 1)
			open()
			return
		close()
	else
		user.visible_message("[user] attempts to flip the mode switch on the [src], but it doesn't budge.", "You try flipping the mode switch, but it doesn't budge.")
