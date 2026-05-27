/obj/item
    name = "Item"
    density = FALSE

    var
        id = "item_base"
        amount = 1

    verb/Coletar()
        set src in oview(1)
        if(!istype(usr, /mob/player))
            return
        var/mob/player/P = usr
        P.AddItem(id, amount)
        P.CheckMissionProgress()
        del(src)

/obj/item/material/primeira_fenda/fragmento_rocha_espiritual
    name = "Fragmento de Rocha Espiritual"
    id = "material_primeira_fenda_fragmento_rocha_espiritual"
