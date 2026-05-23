/mob/npc
    density = TRUE
    icon = 'assets/placeholder.dmi'
    icon_state = "npc"

    verb/Falar()
        set src in oview(1)
        usr << "[src.name] não tem nada a dizer agora."

/mob/npc/auralis/oficial_contratos
    name = "Oficial de Contratos"
    icon_state = "npc_oficial_contratos"

    Falar()
        set src in oview(1)
        if(!istype(usr, /mob/player))
            return
        var/mob/player/P = usr
        P.EnsurePrototypeState()
        var/state = P.missoes["missao_d_primeira_fenda_limpeza_entrada"]
        if(state == MISSION_NOT_STARTED)
            P << "Oficial: Contrato Rank D disponível: Limpeza da Entrada Partida."
            AcceptRankDMission(P)
            return
        if(state == MISSION_ACTIVE)
            P << "Oficial: Vá ao Portão da Fenda, elimine os Rastejantes e traga um Fragmento de Rocha Espiritual."
            return
        if(state == MISSION_READY_TO_TURN_IN)
            TryTurnInRankDMission(P)
            return
        if(state == MISSION_COMPLETED)
            P << "Oficial: Bom trabalho. A Guarda da Fenda registrou sua primeira contribuição."
            return
