/datum/category_item/catalogue/fauna/jelly
	name = "Jelly Blob"
	desc = "These curious creatures are native to the caustic surface of Virgo 2. \
	Although docile, their undulating bodies can sometimes get in the way of attacks \
	meant for more dangerous fauna. When struck, jelly blobs react violently, although \
	their soft exterior does not lend itself well to combat."
	value = CATALOGUER_REWARD_TRIVIAL

/mob/living/simple_mob/vore/jelly
	name = "jelly blob"
	desc = "Some sort of undulating blob of slime!"
	catalogue_data = list(/datum/category_item/catalogue/fauna/jelly)

	icon_dead = "jelly_dead"
	icon_living = "jelly"
	icon_state = "jelly"
	icon = 'icons/mob/vore.dmi'

	faction = FACTION_VIRGO2
	maxHealth = 50
	health = 50

	melee_damage_lower = 2
	melee_damage_upper = 7

	response_help = "gently pets"
	response_disarm = "tries to shove"
	response_harm = "mushes and slaps their hand into"

	say_list_type = /datum/say_list/jelly
	ai_holder_type = /datum/ai_holder/simple_mob/retaliate/jelly

	can_be_drop_prey = FALSE //CHOMP Add

	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0

	allow_mind_transfer = TRUE

// Activate Noms!
	vore_active = 1
	vore_pounce_chance = 10
	vore_icons = SA_ICON_LIVING
	vore_default_mode = DM_DRAIN
	vore_default_contamination_flavor = "Arcid"
	vore_default_contamination_color = "yellow"
	vore_default_item_mode = IM_HOLD
	swallowTime = 2 SECONDS // Hungry little bastards.
/*
/mob/living/simple_mob/vore/jelly/init_vore()
	if(!voremob_loaded)
		return
	.=..()
	var/obj/belly/B = vore_selected
	B.name = "Jelly core"
	B.desc = "You're trapped deep inside the core of the slime creature, it's mass squeezing and rippling around your own body. It slowly kneads you back and forth while at the same time keeping your forcefully restrained and in place as the mass seems to seep under your attire wherever it can, down to your skin and leaving a tingling warmth everywhere it squishes. Even against your struggles and resistance, the creature seems bent on assimilating your form into it's own by any means possible!"
	B.mode_flags = DM_FLAG_THICKBELLY | DM_FLAG_NUMBING | DM_FLAG_LEAVEREMAINS | DM_FLAG_AFFECTWORN
	B.vore_sound = "Tauric Swallow"
	B.release_sound = "Pred Escape"
	B.fancy_vore = 1
	B.vore_verb = "engulf"
	B.digest_brute = 1
	B.digest_burn = 2
	B.digestchance = 15
	B.absorbchance = 5
	B.escapechance = 25
	//B.belly_fullscreen = "acid"
	//B.colorization_enabled = FALSE
*/
/datum/say_list/jelly
	emote_hear = list("squishes","spluts","splorts","sqrshes","makes slime noises")
	emote_see = list("undulates quietly")

/datum/ai_holder/simple_mob/retaliate/jelly
	speak_chance = 8

// Talon's Pet, Wiggleblob!
/mob/living/simple_mob/vore/jelly/wiggleblob
	name = "Mr. Wiggleblob."
	desc = "Mr. Wiggleblob! The official mascot of the Talon. So huggable. So squishable. Just try not to get eaten!"
	size_multiplier = 1.2
