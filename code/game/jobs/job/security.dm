/datum/job/hos
	title = "Head of Security"
	flag = HOS
	head_position = 1
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Colony Director"
	selection_color = "#8E2929"
	idtype = /obj/item/weapon/card/id/security/head
	req_admin_notify = 1
	economic_modifier = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimum_character_age = 27
	minimal_player_age = 14
	outfit_type = /decl/hierarchy/outfit/job/security/hos
	alt_titles = list("Security Commander", "Chief of Security")

/datum/job/warden
	title = "Warden"
	flag = WARDEN
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security/warden
	economic_modifier = 5
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 6
	outfit_type = /decl/hierarchy/outfit/job/security/warden
	alt_titles = list("Brig Officer")

/*
/datum/job/detective
	title = "Detective"
	flag = DETECTIVE
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security/detective
	access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva, access_external_airlocks)
	minimal_access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva, access_external_airlocks)
	economic_modifier = 5
	minimal_player_age = 3
	outfit_type = /decl/hierarchy/outfit/job/security/detective
	alt_titles = list("Forensic Technician" = /decl/hierarchy/outfit/job/security/detective/forensic, "Investigator")
*/

/datum/job/officer
	title = "Security Officer"
	flag = OFFICER
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the head of security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security/officer
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 4
	outfit_type = /decl/hierarchy/outfit/job/security/officer
	alt_titles = list("Probationary Officer", "Senior Officer")

//var/global/lawyer = 0//Checks for another lawyer //This changed clothes on 2nd lawyer, both IA get the same dreds.
/datum/job/lawyer
	title = "Internal Affairs Agent"
	flag = LAWYER
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "Head of Security and Corporate Regulations"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security/internal_affairs_agent
	economic_modifier = 7
	access = list(access_lawyer, access_sec_doors, access_maint_tunnels, access_heads)
	minimal_access = list(access_lawyer, access_sec_doors, access_heads)
	minimal_player_age = 5
	head_position = 1
	alt_titles = list("Corporate Investigator")
	outfit_type = /decl/hierarchy/outfit/job/security/internal_affairs_agent

/*
/datum/job/lawyer/equip(var/mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)
*/

/datum/job/police
	title = "ICE Agent"
	flag = POLICE
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Eridani Trade Federation government"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security/officer
	economic_modifier = 8
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_forensics_lockers,
			            access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_RC_announce, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_forensics_lockers,
			            access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_RC_announce, access_gateway, access_external_airlocks)
	minimal_player_age = 24
	outfit_type = /decl/hierarchy/outfit/job/security/police
	head_position = 1
	whitelist_only = 1
