/datum/mission/rank_d/primeira_fenda_limpeza_entrada
    id = "missao_d_primeira_fenda_limpeza_entrada"
    nome = "Limpeza da Entrada Partida"
    rank = "D"
    descricao = "Elimine os Rastejantes de Pedra na Entrada Rachada da Primeira Fenda e retorne com um Fragmento de Rocha Espiritual."
    recompensa_moedas = 25
    recompensa_exp = 40

    Accept(mob/player/P)
        if(!P)
            return FALSE
        P.EnsurePrototypeState()
        if(P.missoes[id] == MISSION_COMPLETED)
            P << "Você já concluiu este contrato."
            return FALSE
        if(P.missoes[id] == MISSION_ACTIVE || P.missoes[id] == MISSION_READY_TO_TURN_IN)
            P << "Contrato já está ativo."
            return FALSE
        P.missoes[id] = MISSION_ACTIVE
        P << "Contrato aceito: [nome]. Vá ao Portão da Fenda."
        return TRUE

    CanTurnIn(mob/player/P)
        if(!P)
            return FALSE
        P.CheckMissionProgress()
        return P.missoes[id] == MISSION_READY_TO_TURN_IN

    TurnIn(mob/player/P)
        if(!CanTurnIn(P))
            P << "Você ainda não concluiu o objetivo do contrato."
            return FALSE
        if(!P.RemoveItem("material_primeira_fenda_fragmento_rocha_espiritual", 1))
            P << "Falta o Fragmento de Rocha Espiritual."
            return FALSE
        P.missoes[id] = MISSION_COMPLETED
        P.moedas += recompensa_moedas
        P.exp_personagem += recompensa_exp
        P.AddMemory("evento_missao_rank_d_concluida", "missao", 2, "Concluiu o contrato Rank D Limpeza da Entrada Partida.")
        P << "Contrato concluído. Recompensa: [recompensa_moedas] moedas e [recompensa_exp] EXP."
        return TRUE

/proc/AcceptRankDMission(mob/player/P)
    var/datum/mission/rank_d/primeira_fenda_limpeza_entrada/M = new
    var/result = M.Accept(P)
    if(result && P.client)
        P.client.UpdateHUD()
    return result

/proc/TryTurnInRankDMission(mob/player/P)
    var/datum/mission/rank_d/primeira_fenda_limpeza_entrada/M = new
    var/result = M.TurnIn(P)
    if(result && P.client)
        P.client.UpdateHUD()
    return result
