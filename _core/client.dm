/client

/client/New()
    ..()
    spawn(2)
        if(src.mob)
            src.mob << "Interface inicializada. Use a aba Interface para abrir painéis."
            UpdateHUD()

/client/proc/GetPlayer()
    if(!src.mob)
        return null
    if(!istype(src.mob, /mob/player))
        return null
    return src.mob

/client/proc/UpdateHUD()
    var/mob/player/P = GetPlayer()
    if(!P)
        return
    P << "[P.name] | HP: [P.hp]/[P.max_hp] | Energia: [P.energia_fisica]/[P.max_energia_fisica] | Fluxo: [P.fluxo_espiritual]/[P.max_fluxo_espiritual] | Sincronia: [P.sincronia]/[P.max_sincronia] | Missão: [P.GetMissionStateName()]"

/client/proc/ShowStatusPanel()
    var/mob/player/P = GetPlayer()
    if(!P)
        return
    P << "=== STATUS ==="
    P << "Nome: [P.name]"
    P << "HP: [P.hp]/[P.max_hp]"
    P << "Energia Física: [P.energia_fisica]/[P.max_energia_fisica]"
    P << "Fluxo Espiritual: [P.fluxo_espiritual]/[P.max_fluxo_espiritual]"
    P << "Sincronia: [P.sincronia]/[P.max_sincronia]"
    P << "Rank: [P.rank] | EXP: [P.exp_personagem] | Moedas: [P.moedas]"
    P << "Missão Rank D: [P.GetMissionStateName()]"

/client/proc/ShowMissionPanel()
    var/mob/player/P = GetPlayer()
    if(!P)
        return
    P << "=== MISSÕES ==="
    P << "Rank D: Limpeza da Entrada Partida"
    P << "Estado: [P.GetMissionStateName()]"
    if(P.missoes["missao_d_primeira_fenda_limpeza_entrada"] == MISSION_ACTIVE)
        P << "Objetivo: Elimine Rastejantes de Pedra e colete o Fragmento de Rocha Espiritual."

/client/proc/ShowInventoryPanel()
    var/mob/player/P = GetPlayer()
    if(!P)
        return
    P << "=== INVENTÁRIO ==="
    var/amount = P.inventario["material_primeira_fenda_fragmento_rocha_espiritual"]
    if(!amount)
        amount = 0
    P << "Fragmento de Rocha Espiritual: [amount]"

/client/proc/ShowGuardianPanel()
    var/mob/player/P = GetPlayer()
    if(!P)
        return
    P << "=== GUARDIÃO ==="
    if(P.guardiao_ativo)
        P << "Guardião ativo: Salamandra Anímica"
        P << "Sincronia: [P.sincronia]/[P.max_sincronia]"
    else
        P << "Nenhum guardião ativo. Use ChamarGuardiao."

/client/proc/ShowSkillsPanel()
    var/mob/player/P = GetPlayer()
    if(!P)
        return
    P << "=== SKILLS ==="
    P << "Ataque Básico: dano 10, custo 5 Energia Física, alcance 1."
    P << "Faísca Ardente: dano 18, custo 8 Fluxo Espiritual, alcance 4."

/client/proc/ShowSystemPanel()
    var/mob/player/P = GetPlayer()
    if(!P)
        return
    P << "=== SISTEMA ==="
    P << "1. Fale com o Oficial de Contratos."
    P << "2. Aceite a missão Rank D."
    P << "3. Vá ao Portal da Fenda."
    P << "4. Use AtaqueBasico ou FaiscaArdente."
    P << "5. Chame a Salamandra Anímica."
    P << "6. Colete o Fragmento e retorne."
    P << "7. Entregue a missão."
