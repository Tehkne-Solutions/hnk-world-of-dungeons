client
    skin = "ui/hnk_main.dmf"

client/New()
    ..()
    if(mob)
        mob << "Interface inicializada. Use os verbs de Interface para abrir painéis."
        UpdateHUD()

proc/ShowStatusPanel()
    if(!mob)
        return
    mob << "=== STATUS ==="
    mob << "Nome: [mob.name]"
    mob << "HP: [mob.hp]/[mob.max_hp] | Energia Física: [mob.energia_fisica]/[mob.max_energia_fisica]"
    mob << "Fluxo Espiritual: [mob.fluxo_espiritual]/[mob.max_fluxo_espiritual] | Sincronia: [mob.sincronia]/[mob.max_sincronia]"
    mob << "Rank: [mob.rank] | EXP: [mob.exp_personagem] | Moedas: [mob.moedas]"
    mob << "Missão Rank D: [mob.GetMissionStateName()]"

proc/ShowMissionPanel()
    if(!mob)
        return
    mob << "=== MISSÕES ==="
    mob << "Rank D: Limpeza da Entrada Partida"
    mob << "Estado: [mob.GetMissionStateName()]"
    if(mob.missoes["missao_d_primeira_fenda_limpeza_entrada"] == MISSION_ACTIVE)
        mob << "Objetivo: Elimine Rastejantes de Pedra e colete o Fragmento."

proc/ShowInventoryPanel()
    if(!mob)
        return
    mob << "=== INVENTÁRIO ==="
    var/amount = mob.inventario["material_primeira_fenda_fragmento_rocha_espiritual"]
    if(!amount)
        amount = 0
    mob << "Fragmento de Rocha Espiritual: [amount]"

proc/ShowGuardianPanel()
    if(!mob)
        return
    mob << "=== GUARIDÃO ==="
    if(mob.guardiao_ativo)
        mob << "Guardião ativo: Salamandra Anímica"
        mob << "Sincronia atual: [mob.sincronia]/[mob.max_sincronia]"
    else
        mob << "Nenhum guardião ativo. Use ChamarGuardiao."

proc/ShowSkillsPanel()
    if(!mob)
        return
    mob << "=== SKILLS ==="
    mob << "Ataque Básico: dano 10, custo 5 Energia Física, alcance 1"
    mob << "Faísca Ardente: dano 18, custo 8 Fluxo Espiritual, alcance 4"

proc/ShowSystemPanel()
    if(!mob)
        return
    mob << "=== SISTEMA ==="
    mob << "Fale com o Oficial de Contratos para aceitar o contrato Rank D."
    mob << "Vá ao Portal da Fenda com a missão ativa."
    mob << "Use AtaqueBasico ou FaiscaArdente para lutar."
    mob << "Colete o Fragmento e retorne para entregar a missão."

proc/UpdateHUD()
    if(!mob)
        return
    mob << "[mob.name] | HP: [mob.hp]/[mob.max_hp] | Energia: [mob.energia_fisica]/[mob.max_energia_fisica] | Fluxo: [mob.fluxo_espiritual]/[mob.max_fluxo_espiritual] | Sincronia: [mob.sincronia]/[mob.max_sincronia] | Missão: [mob.GetMissionStateName()]"
