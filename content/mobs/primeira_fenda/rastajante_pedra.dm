/mob/enemy
    name = "Inimigo"
    density = TRUE

    var
        max_hp = 30
        hp = 30
        dano_base = 5
        exp_reward = 5
        drop_item_id = null
        drop_chance = 0

    proc/TakeDamage(amount, atom/source)
        hp -= amount
        if(hp < 0)
            hp = 0
        if(ismob(source))
            var/mob/M = source
            M << "[name] sofreu [amount] de dano. HP: [hp]/[max_hp]."
        if(hp <= 0)
            Die(source)

    proc/Die(atom/source)
        if(ismob(source))
            var/mob/M = source
            M << "[name] foi derrotado."
        if(istype(source, /mob/player))
            var/mob/player/P = source
            P.exp_personagem += exp_reward
            if(drop_item_id && prob(drop_chance))
                P.AddItem(drop_item_id, 1)
                P.CheckMissionProgress()
        del(src)

    Bump(atom/A)
        ..()
        if(istype(A, /mob/player))
            var/mob/player/P = A
            P.TakeDamage(dano_base, src)

/mob/enemy/primeira_fenda/rastajante_pedra
    name = "Rastejante de Pedra"
    max_hp = 34
    hp = 34
    dano_base = 6
    exp_reward = 8
    drop_item_id = "material_primeira_fenda_fragmento_rocha_espiritual"
    drop_chance = 65
