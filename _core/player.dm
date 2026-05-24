/mob/player
    name = "Aventureiro"
    icon = 'assets/entities/player_placeholder.dmi'
    icon_state = "player_idle"
    density = TRUE

    var
        max_hp = 100
        hp = 100
        max_energia_fisica = 100
        energia_fisica = 100
        max_fluxo_espiritual = 80
        fluxo_espiritual = 80
        max_sincronia = 100
        sincronia = 0

        rank = "D"
        exp_personagem = 0
        moedas = 0

        list/missoes = list()
        list/inventario = list()
        list/memorias = list()
        obj/guardian/guardiao_ativo = null

    Login()
        ..()
        loc = locate(30, 30, 1)
        verbs += /mob/player/verb/Status
        verbs += /mob/player/verb/AtaqueBasico
        verbs += /mob/player/verb/FaiscaArdente
        verbs += /mob/player/verb/ChamarGuardiao
        verbs += /mob/player/verb/ComandoGuardiao
        verbs += /mob/player/verb/EntregarMissao
        EnsurePrototypeState()
        src << "Bem-vindo a Auralis. Fale com o Oficial de Contratos para iniciar."
        if(src.client)
            src.client.skin = "ui/hnk_main.dmf"
            src.client.UpdateHUD()

    proc/EnsurePrototypeState()
        if(!missoes)
            missoes = list()
        if(!inventario)
            inventario = list()
        if(!memorias)
            memorias = list()
        if(!missoes["missao_d_primeira_fenda_limpeza_entrada"])
            missoes["missao_d_primeira_fenda_limpeza_entrada"] = MISSION_NOT_STARTED

    proc/GetMissionStateName()
        var/state = missoes["missao_d_primeira_fenda_limpeza_entrada"]
        if(state == MISSION_NOT_STARTED)
            return "Não iniciada"
        if(state == MISSION_ACTIVE)
            return "Ativa"
        if(state == MISSION_READY_TO_TURN_IN)
            return "Pronta para entrega"
        if(state == MISSION_COMPLETED)
            return "Concluída"
        return "Desconhecido"

    proc/TakeDamage(amount, atom/source)
        hp -= amount
        if(hp < 0)
            hp = 0
        src << "Você sofreu [amount] de dano. HP: [hp]/[max_hp]."
        if(hp <= 0)
            OnDefeated(source)

    proc/HealFull()
        hp = max_hp
        energia_fisica = max_energia_fisica
        fluxo_espiritual = max_fluxo_espiritual
        src << "Você se recuperou."
        if(src.client)
            src.client.UpdateHUD()

    proc/OnDefeated(atom/source)
        src << "Você caiu em combate e foi resgatado para Auralis."
        loc = locate(30, 30, 1)
        HealFull()
        AddMemory("evento_jogador_resgatado", "queda", 2, "Foi resgatado após cair em combate.")
        if(src.client)
            src.client.UpdateHUD()

    proc/AddItem(item_id, amount = 1)
        if(!inventario[item_id])
            inventario[item_id] = 0
        inventario[item_id] += amount
        src << "Recebeu [amount]x [item_id]."
        if(src.client)
            src.client.UpdateHUD()

    proc/RemoveItem(item_id, amount = 1)
        if(!inventario[item_id] || inventario[item_id] < amount)
            return FALSE
        inventario[item_id] -= amount
        if(inventario[item_id] <= 0)
            inventario -= item_id
        if(src.client)
            src.client.UpdateHUD()
        return TRUE

    proc/AddMemory(event_id, category, weight, description)
        var/datum/narrative_event/E = new
        E.event_id = event_id
        E.category = category
        E.weight = weight
        E.description = description
        E.actor_name = key ? key : name
        E.location_name = "[x],[y],[z]"
        memorias += E
        src << "Memória registrada: [description]"

    proc/TryEnterFirstRift()
        EnsurePrototypeState()
        if(missoes["missao_d_primeira_fenda_limpeza_entrada"] != MISSION_ACTIVE)
            src << "O Portão da Fenda está bloqueado. Aceite o contrato Rank D primeiro."
            loc = locate(44, 30, 1)
            return
        src << "Você atravessa o Portão da Fenda."
        loc = locate(25, 3, 2)
        if(src.client)
            src.client.UpdateHUD()

    proc/CheckMissionProgress()
        if(missoes["missao_d_primeira_fenda_limpeza_entrada"] == MISSION_ACTIVE)
            if(inventario["material_primeira_fenda_fragmento_rocha_espiritual"] >= 1)
                missoes["missao_d_primeira_fenda_limpeza_entrada"] = MISSION_READY_TO_TURN_IN
                src << "Objetivo concluído. Retorne ao Oficial de Contratos."
                if(src.client)
                    src.client.UpdateHUD()

    verb/Status()
        src << "HP: [hp]/[max_hp] | Energia: [energia_fisica]/[max_energia_fisica] | Fluxo: [fluxo_espiritual]/[max_fluxo_espiritual] | Sincronia: [sincronia]/[max_sincronia]"
        src << "Missão Rank D: [GetMissionStateName()]"

    verb/AtaqueBasico()
        set category = "Combate"
        BasicAttack(src)

    verb/FaiscaArdente()
        set category = "Combate"
        UseFaiscaArdente(src)

    verb/ChamarGuardiao()
        set category = "Guardião"
        if(guardiao_ativo)
            src << "Seu guardião já está ativo."
            return
        guardiao_ativo = new /obj/guardian/salamandra_animica(loc)
        guardiao_ativo.owner = src
        src << "Salamandra Anímica manifesta sua centelha ao seu lado."
        if(src.client)
            src.client.UpdateHUD()

    verb/ComandoGuardiao()
        set category = "Guardião"
        if(!guardiao_ativo)
            src << "Você precisa chamar seu guardião primeiro."
            return
        guardiao_ativo.UseActiveSkill()
        if(src.client)
            src.client.UpdateHUD()

    verb/EntregarMissao()
        set category = "Missões"
        TryTurnInRankDMission(src)
    verb/AbrirStatus()
        set category = "Interface"
        if(src.client)
            src.client.ShowStatusPanel()

    verb/AbrirMissoes()
        set category = "Interface"
        if(src.client)
            src.client.ShowMissionPanel()

    verb/AbrirInventario()
        set category = "Interface"
        if(src.client)
            src.client.ShowInventoryPanel()

    verb/AbrirGuardiao()
        set category = "Interface"
        if(src.client)
            src.client.ShowGuardianPanel()

    verb/AbrirSkills()
        set category = "Interface"
        if(src.client)
            src.client.ShowSkillsPanel()

    verb/AbrirSistema()
        set category = "Interface"
        if(src.client)
            src.client.ShowSystemPanel()
