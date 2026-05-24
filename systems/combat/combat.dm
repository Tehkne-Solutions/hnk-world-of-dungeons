/proc/GetTargetInFront(mob/user, range = 1)
    if(!user)
        return null
    var/turf/T = get_step(user, user.dir)
    var/current_range = 1
    while(T && current_range <= range)
        for(var/mob/M in T.contents)
            if(M != user)
                return M
        T = get_step(T, user.dir)
        current_range++
    return null

/proc/DealDamage(mob/source, mob/target, amount, damage_type = "fisico")
    if(!target || amount <= 0)
        return FALSE
    if(istype(target, /mob/enemy))
        var/mob/enemy/E = target
        E.TakeDamage(amount, source)
        return TRUE
    if(istype(target, /mob/player))
        var/mob/player/P = target
        P.TakeDamage(amount, source)
        return TRUE
    return FALSE

/proc/BasicAttack(mob/player/user)
    if(!user)
        return FALSE
    if(user.energia_fisica < 5)
        user << "Energia Física insuficiente."
        return FALSE
    var/mob/target = GetTargetInFront(user, 1)
    if(!target)
        user << "Nenhum alvo à frente."
        return FALSE
    user.energia_fisica -= 5
    user << "Você executa um ataque básico."
    DealDamage(user, target, 10, "fisico")
    if(user.client)
        user.client.UpdateHUD()
    return TRUE
