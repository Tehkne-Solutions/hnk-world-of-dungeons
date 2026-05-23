/area/auralis
    name = "Auralis"

/proc/BuildAuralisPrototype()
    for(var/x = 1, x <= 60, x++)
        for(var/y = 1, y <= 60, y++)
            new /turf/chao/praca(locate(x, y, 1))

    for(var/x = 1, x <= 60, x++)
        new /turf/parede/pedra(locate(x, 1, 1))
        new /turf/parede/pedra(locate(x, 60, 1))

    for(var/y = 1, y <= 60, y++)
        new /turf/parede/pedra(locate(1, y, 1))
        new /turf/parede/pedra(locate(60, y, 1))

    new /mob/npc/auralis/oficial_contratos(locate(28, 30, 1))
    new /turf/portal_fenda(locate(45, 30, 1))
