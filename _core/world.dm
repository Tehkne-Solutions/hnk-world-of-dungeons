world
    name = "HNK: World of Dungeons"
    hub = "TehkneSolutions.HNKWorldOfDungeons"
    view = 7
    fps = 30
    icon_size = TILE_SIZE
    turf = /turf/chao/pedra
    mob = /mob/player

world/New()
    ..()
    BuildAuralisPrototype()
    BuildPrimeiraFendaEntradaRachada()
    world.log << "HNK: World of Dungeons iniciado."

/turf/chao
    density = FALSE

/turf/chao/pedra
    name = "Piso de Pedra"

/turf/chao/praca
    name = "Piso da Praça"

/turf/parede
    density = TRUE
    opacity = FALSE

/turf/parede/pedra
    name = "Parede de Pedra"

/turf/portal_fenda
    name = "Portal da Fenda"
    density = FALSE

    Entered(atom/movable/A)
        ..()
        if(istype(A, /mob/player))
            var/mob/player/P = A
            P.TryEnterFirstRift()

/turf/portal_retorno_auralis
    name = "Retorno para Auralis"
    density = FALSE

    Entered(atom/movable/A)
        ..()
        if(istype(A, /mob/player))
            var/mob/player/P = A
            P.loc = locate(44, 30, 1)
            P << "Você retorna ao Portão da Fenda de Auralis."
