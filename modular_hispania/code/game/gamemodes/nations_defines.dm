/datum/mind
	var/datum/nations/nation

//Nations Icons
/proc/set_nations_hud(mob/M, new_icon_state)
	if(!istype(M))
		CRASH("set_antag_hud(): [M] ([M.type]) is not a mob!")
	var/image/holder = M.hud_list[NATIONS_HUD]
	if(holder)
		holder.icon_state = new_icon_state
	if(M.mind || new_icon_state) //in mindless mobs, only null is acceptable, otherwise we're antagging a mindless mob, meaning we should runtime
		M.mind.antag_hud_icon_state = new_icon_state

/mob/living/proc/process_nations()
	if(client)
		var/client/C = client
		for(var/mob/living/carbon/human/H in view(src, world.view))
			C.images += H.hud_list[NATIONS_HUD]

/datum/nations
	var/name
	var/desc = "Nations Token"
	var/default_name
	var/current_name
	var/default_leader
	var/current_leader
	var/list/membership = list()
	var/leader_rank = "Leader"
	var/heir_rank = "Heir"
	var/member_rank = "Member"
	var/heir

/datum/nations/atmosia
	name = "Atmosia"
	default_name = "Atmosia"
	default_leader = "Chief Engineer"

/datum/nations/brigston
	name = "Brigston"
	default_name = "Brigston"
	default_leader = "Head of Security"

/datum/nations/cargonia
	name = "Cargonia"
	default_name = "Cargonia"
	default_leader = "Quartermaster"

/datum/nations/command
	name = "People's Republic of Commandzakstan"
	default_name = "People's Republic of Commandzakstan"
	default_leader = "Captain"

/datum/nations/medistan
	name = "Medistan"
	default_name = "Medistan"
	default_leader = "Chief Medical Officer"

/datum/nations/scientopia
	name = "Scientopia"
	default_name = "Scientopia"
	default_leader = "Research Director"

/datum/nations/service
	name = "Servicion"
	default_name = "Servicion"
	default_leader = "Bartender"
