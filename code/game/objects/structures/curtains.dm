/obj/structure/curtain
	name = "curtain"
	icon = 'icons/obj/curtain.dmi'
	icon_state = "closed"
	layer = 4.2
	opacity = 1
	density = 0

/obj/structure/curtain/open
	icon_state = "open"
	layer = 3.4
	opacity = 0

/obj/structure/curtain/bullet_act(obj/item/projectile/P, def_zone)
	if(!P.nodamage)
		visible_message("<span class='warning'>[P] tears [src] down!</span>")
		qdel(src)
	else
		..(P, def_zone)

/obj/structure/curtain/attack_hand(mob/user)
	playsound(get_turf(loc), "rustle", 15, 1, -5)
	toggle()
	..()

/obj/structure/curtain/proc/toggle()
	set_opacity(!opacity)
	if(opacity)
		icon_state = "closed"
		layer = 4.2
	else
		icon_state = "open"
		layer = 3.4

/obj/structure/curtain/attackby(obj/item/P, mob/user)
	if(istype(P, /obj/item/weapon/wirecutters))
		playsound(src, P.usesound, 50, 1)
		user << "<span class='notice'>You start to cut the shower curtains.</span>"
		if(do_after(user, 10))
			user << "<span class='notice'>You cut the shower curtains.</span>"
			var/obj/item/stack/material/plastic/A = new /obj/item/stack/material/plastic( src.loc )
			A.amount = 3
			qdel(src)
		return
	else
		src.attack_hand(user)
	return

/obj/structure/curtain/black
	name = "black curtain"
	color = "#222222"

/obj/structure/curtain/medical
	name = "plastic curtain"
	color = "#B8F5E3"
	alpha = 200

/obj/structure/curtain/open/bed
	name = "bed curtain"
	color = "#854636"

/obj/structure/curtain/open/privacy
	name = "privacy curtain"
	color = "#B8F5E3"

/obj/structure/curtain/open/shower
	name = "shower curtain"
	color = "#ACD1E9"
	alpha = 200

/obj/structure/curtain/open/shower/engineering
	color = "#FFA500"

/obj/structure/curtain/open/shower/medical
	color = "#B8F5E3"

/obj/structure/curtain/open/shower/security
	color = "#AA0000"
