/obj/guardian
    name = "Guardião Astral"
    icon = 'assets/guardians/guardian_placeholder.dmi'
    icon_state = "guardian"
    density = FALSE

    var
        mob/player/owner = null
        id = "guardiao_base"
        elemento = null
        vinculo = 0
        sincronia_gerada = 5

    proc/FollowOwner()
        if(owner && get_dist(src, owner) > 1)
            step_to(src, owner)

    proc/UseActiveSkill()
        if(!owner)
            return FALSE
        owner << "O guardião aguarda seu comando."
        return FALSE
