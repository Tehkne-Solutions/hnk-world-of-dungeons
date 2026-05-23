/datum/mission
    var
        id = "mission_base"
        nome = "Missão Base"
        rank = "D"
        descricao = ""
        recompensa_moedas = 0
        recompensa_exp = 0

    proc/Accept(mob/player/P)
        return FALSE

    proc/CanTurnIn(mob/player/P)
        return FALSE

    proc/TurnIn(mob/player/P)
        return FALSE
