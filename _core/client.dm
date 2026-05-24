client

client/New()
    ..()
    if(client && client.mob)
        var/mob/player/M = client.mob
        M << "Interface inicializada. Use os verbs de Interface para abrir painéis."
        UpdateHUD()

proc/ShowStatusPanel()
    if(!client || !client.mob)
        return
    var/mob/player/M = client.mob
    M << "=== STATUS ==="
    M << "Nome: [M.name]"
    M << "HP: [M.hp]/[M.max_hp] | Energia Física: [M.energia_fisica]/[M.max_energia_fisica]"
    M << "Fluxo Espiritual: [M.fluxo_espiritual]/[M.max_fluxo_espiritual] | Sincronia: [M.sincronia]/[M.max_sincronia]"
    M << "Rank: [M.rank] | EXP: [M.exp_personagem] | Moedas: [M.moedas]"
    M << "Missão Rank D: [M.GetMissionStateName()]"

proc/ShowMissionPanel()
    if(!client || !client.mob)
        return
    var/mob/player/M = client.mob
    M << "=== MISSÕES ==="
    M << "Rank D: Limpeza da Entrada Partida"
    M << "Estado: [M.GetMissionStateName()]"
    if(M.missoes["missao_d_primeira_fenda_limpeza_entrada"] == MISSION_ACTIVE)
        M << "Objetivo: Elimine Rastejantes de Pedra e colete o Fragmento."

proc/ShowInventoryPanel()
    if(!client || !client.mob)
        return
    var/mob/player/M = client.mob
    M << "=== INVENTÁRIO ==="
    var/amount = M.inventario["material_primeira_fenda_fragmento_rocha_espiritual"]
    if(!amount)
        amount = 0
    M << "Fragmento de Rocha Espiritual: [amount]"

proc/ShowGuardianPanel()
    if(!client || !client.mob)
        return
    var/mob/player/M = client.mob
    M << "=== GUARIDÃO ==="
    if(M.guardiao_ativo)
        M << "Guardião ativo: Salamandra Anímica"
        M << "Sincronia atual: [M.sincronia]/[M.max_sincronia]"
    else
        M << "Nenhum guardião ativo. Use ChamarGuardiao."

proc/ShowSkillsPanel()
    if(!client || !client.mob)
        return
    var/mob/player/M = client.mob
    M << "=== SKILLS ==="
    M << "Ataque Básico: dano 10, custo 5 Energia Física, alcance 1"
    M << "Faísca Ardente: dano 18, custo 8 Fluxo Espiritual, alcance 4"

proc/ShowSystemPanel()
    if(!client || !client.mob)
        return
    var/mob/player/M = client.mob
    M << "=== SISTEMA ==="
    M << "Fale com o Oficial de Contratos para aceitar o contrato Rank D."
    M << "Vá ao Portal da Fenda com a missão ativa."
    M << "Use AtaqueBasico ou FaiscaArdente para lutar."
    M << "Colete o Fragmento e retorne para entregar a missão."

proc/UpdateHUD()
    if(!client || !client.mob)
        return
    var/mob/player/M = client.mob
    M << "[M.name] | HP: [M.hp]/[M.max_hp] | Energia: [M.energia_fisica]/[M.max_energia_fisica] | Fluxo: [M.fluxo_espiritual]/[M.max_fluxo_espiritual] | Sincronia: [M.sincronia]/[M.max_sincronia] | Missão: [M.GetMissionStateName()]"
