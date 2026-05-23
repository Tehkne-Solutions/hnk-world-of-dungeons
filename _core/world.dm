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
    world.log << "HNK: World of Dungeons iniciado."

/turf
    icon = 'assets/placeholder.dmi'

/turf/chao
    density = FALSE

/turf/chao/pedra
    name = "Piso de Pedra"
    icon_state = "floor_stone"

/turf/chao/praca
    name = "Piso da Praça"
    icon_state = "floor_plaza"

/turf/parede
    density = TRUE
    opacity = FALSE
    icon = 'assets/placeholder.dmi'

/turf/parede/pedra
    name = "Parede de Pedra"
    icon_state = "wall_stone"

/turf/portal_fenda
    name = "Portal da Fenda"
    icon = 'assets/placeholder.dmi'
    icon_state = "portal"
    density = FALSE

    Entered(atom/movable/A)
        ..()
        if(istype(A, /mob/player))
            var/mob/player/P = A
            P.TryEnterFirstRift()
