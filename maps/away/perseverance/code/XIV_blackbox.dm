/obj/structure/blackbox
	name = "Blackbox"
	icon = 'maps/away/perseverance/icons/obj/blackbox.dmi'
	icon_state = "blackbox"
	desc = "A sturdy machine which utilizes phoron to record subspace data without needing power, with a relatively long delay. It has been modified to interface with modern computers."
	density = 1
	anchored = 1

/obj/structure/blackbox/attackby(obj/item/P as obj, mob/user as mob)

	if(isWrench(P))
		if(anchored == 1)
			user.visible_message("[user] begins unwrenching the anchoring bolts on [src].", "You begin unwrenching the anchoring bolts...")
		else
			user.visible_message("[user] begins wrenching the anchoring bolts on [src].", "You begin wrenching the anchoring bolts...")
		if(do_after(user, 50, src))
			if(!src || !user) return
			if(anchored == 1)
				user.visible_message("[user] unwrenches the anchoring bolts on [src].", "You unwrench the anchoring bolts.")
				anchored = 0
			else
				user.visible_message("[user] wrenches the anchoring bolts on [src].", "You wrench the anchoring bolts.")
				anchored = 1