// Nettles/variants.
/datum/seed/nettle
	name = PLANT_NETTLE
	seed_name = PLANT_NETTLE
	display_name = "nettles"
	mutants = list(PLANT_DEATHNETTLE)
	chems = list(REAGENT_ID_NUTRIMENT = list(1,50), REAGENT_ID_SACID = list(0,1))
	kitchen_tag = PLANT_NETTLE

/datum/seed/nettle/New()
	..()
	set_trait(TRAIT_HARVEST_REPEAT,1)
	set_trait(TRAIT_MATURATION,6)
	set_trait(TRAIT_PRODUCTION,6)
	set_trait(TRAIT_YIELD,4)
	set_trait(TRAIT_POTENCY,10)
	set_trait(TRAIT_STINGS,1)
	set_trait(TRAIT_PLANT_ICON,"bush5")
	set_trait(TRAIT_PRODUCT_ICON,"nettles")
	set_trait(TRAIT_PRODUCT_COLOUR,"#728A54")

/datum/seed/nettle/death
	name = PLANT_DEATHNETTLE
	seed_name = "death nettle"
	display_name = "death nettles"
	kitchen_tag = PLANT_DEATHNETTLE
	mutants = null
	chems = list(REAGENT_ID_NUTRIMENT = list(1,50), REAGENT_ID_PACID = list(0,1))

/datum/seed/nettle/death/New()
	..()
	set_trait(TRAIT_MATURATION,8)
	set_trait(TRAIT_YIELD,2)
	set_trait(TRAIT_PRODUCT_COLOUR,"#8C5030")
	set_trait(TRAIT_PLANT_COLOUR,"#634941")
