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

/turf
    icon = 'assets/tiles/tiles_placeholder.dmi'

/turf/chao
    density = FALSE

/turf/chao/pedra
    name = "Piso de Pedra"
    icon = 'assets/tiles/tiles_placeholder.dmi'
    icon_state = "floor_stone"

/turf/chao/praca
    name = "Piso da Praça"
    icon = 'assets/tiles/tiles_placeholder.dmi'
    icon_state = "floor_plaza"

/turf/parede
    density = TRUE
    opacity = FALSE
    icon = 'assets/tiles/tiles_placeholder.dmi'

/turf/parede/pedra
    name = "Parede de Pedra"
    icon = 'assets/tiles/tiles_placeholder.dmi'
    icon_state = "wall_stone"

/turf/portal_fenda
    name = "Portal da Fenda"
    icon = 'assets/tiles/tiles_placeholder.dmi'
    icon_state = "portal"
    density = FALSE

    Entered(atom/movable/A)
        ..()
        if(istype(A, /mob/player))
            var/mob/player/P = A
            P.TryEnterFirstRift()

/turf/portal_retorno_auralis
    name = "Retorno para Auralis"
    icon = 'assets/tiles/tiles_placeholder.dmi'
    icon_state = "portal_return"
    density = FALSE

    Entered(atom/movable/A)
        ..()
        if(istype(A, /mob/player))
            var/mob/player/P = A
            P.loc = locate(44, 30, 1)
            P << "Você retorna ao Portão da Fenda de Auralis."
