/area/primeira_fenda
    name = "Primeira Fenda"

/proc/BuildPrimeiraFendaEntradaRachada()
    for(var/x = 1, x <= 50, x++)
        for(var/y = 1, y <= 50, y++)
            new /turf/chao/pedra(locate(x, y, 2))

    for(var/x = 1, x <= 50, x++)
        new /turf/parede/pedra(locate(x, 1, 2))
        new /turf/parede/pedra(locate(x, 50, 2))

    for(var/y = 1, y <= 50, y++)
        new /turf/parede/pedra(locate(1, y, 2))
        new /turf/parede/pedra(locate(50, y, 2))

    new /turf/portal_retorno_auralis(locate(25, 2, 2))

    new /mob/enemy/primeira_fenda/rastajante_pedra(locate(24, 18, 2))
    new /mob/enemy/primeira_fenda/rastajante_pedra(locate(27, 22, 2))
    new /mob/enemy/primeira_fenda/rastajante_pedra(locate(22, 28, 2))

    new /obj/item/material/primeira_fenda/fragmento_rocha_espiritual(locate(25, 35, 2))
