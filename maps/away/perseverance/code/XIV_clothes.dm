/obj/item/clothing/under/XIV
	icon = 'maps/away/perseverance/icons/clothes/XIVitem.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/away/perseverance/icons/clothes/XIVunder.dmi')
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/away/perseverance/icons/clothes/XIVunathi.dmi'
		)

/obj/item/clothing/under/XIV/xion
	name = "xion jumpsuit"
	desc = "A relatively protecive utility jumpsuit produced by Xion Industries."
	icon_state = "xion"
	worn_state = "xionsuit_s"
	siemens_coefficient = 0.8
	armor = list(
		rad = ARMOR_RAD_MINOR
		)

/obj/item/clothing/under/XIV/xionplus
	name = "xion command suit"
	desc = "A special suit used by higher-ranking xion employees."
	icon_state = "manage"
	worn_state = "manage_s"
	armor = list(
		energy = ARMOR_ENERGY_SMALL,
		rad = ARMOR_RAD_MINOR,
		bio = ARMOR_BIO_SMALL,
		melee = ARMOR_MELEE_SMALL
		)

/obj/item/clothing/under/rank/medical/XIV
	name = "field physician's jumpsuit"