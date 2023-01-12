/obj/machinery/economy/vending/security
	var/list/hispa_products = list(/obj/item/taperoll = 8)

/obj/machinery/economy/vending/security/Initialize(mapload)
	products |= hispa_products
	..()

/obj/machinery/economy/vending/engivend
	var/list/hispa_products = list(/obj/item/taperoll/engi = 8)

/obj/machinery/economy/vending/engivend/Initialize(mapload)
	products |= hispa_products
	..()
