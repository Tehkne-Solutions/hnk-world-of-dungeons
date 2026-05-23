/obj/guardian/salamandra_animica
    name = "Salamandra Anímica"
    id = "guardiao_salamandra_animica"
    elemento = ELEMENT_FIRE
    icon_state = "guardian_salamander"

    UseActiveSkill()
        if(!owner)
            return FALSE
        if(owner.sincronia < 10)
            owner << "Sincronia insuficiente para usar Faísca Gêmea."
            return FALSE
        var/mob/target = GetTargetInFront(owner, 3)
        if(!target)
            owner << "A Salamandra não encontra um alvo para Faísca Gêmea."
            return FALSE
        owner.sincronia -= 10
        owner << "A Salamandra Anímica dispara Faísca Gêmea."
        DealDamage(owner, target, 14, "fogo_guardiao")
        vinculo += 1
        return TRUE
