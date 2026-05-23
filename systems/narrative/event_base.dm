/datum/narrative_event
    var
        event_id = "evento_base"
        category = "geral"
        weight = 1
        actor_name = ""
        target_name = ""
        location_name = ""
        description = ""
        created_at = 0

    New()
        ..()
        created_at = world.time
