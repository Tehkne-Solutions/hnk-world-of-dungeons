/datum/skill
    var
        id = "skill_base"
        nome = "Skill Base"
        elemento = null
        custo_fluxo = 0
        custo_energia = 0
        cooldown_ticks = 10
        dano = 0
        alcance = 1
        ultimo_uso = 0

    proc/CanUse(mob/player/user)
        if(!user)
            return FALSE
        if(user.fluxo_espiritual < custo_fluxo)
            user << "Fluxo Espiritual insuficiente."
            return FALSE
        if(user.energia_fisica < custo_energia)
            user << "Energia Física insuficiente."
            return FALSE
        return TRUE

    proc/PayCost(mob/player/user)
        user.fluxo_espiritual -= custo_fluxo
        user.energia_fisica -= custo_energia
        if(user.client)
            user.client.UpdateHUD()

    proc/Use(mob/player/user)
        return FALSE
