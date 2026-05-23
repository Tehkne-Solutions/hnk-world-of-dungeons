/datum/skill/fogo/faisca_ardente
    id = "skill_fogo_faisca_ardente"
    nome = "Faísca Ardente"
    elemento = ELEMENT_FIRE
    custo_fluxo = 8
    cooldown_ticks = 12
    dano = 18
    alcance = 4

    Use(mob/player/user)
        if(!CanUse(user))
            return FALSE
        var/mob/target = GetTargetInFront(user, alcance)
        if(!target)
            user << "A Faísca Ardente se dissipa sem atingir alvo."
            PayCost(user)
            return FALSE
        PayCost(user)
        user << "Você lança Faísca Ardente."
        DealDamage(user, target, dano, "fogo")
        user.sincronia = min(user.max_sincronia, user.sincronia + 2)
        return TRUE

/proc/UseFaiscaArdente(mob/player/user)
    var/datum/skill/fogo/faisca_ardente/S = new
    return S.Use(user)
