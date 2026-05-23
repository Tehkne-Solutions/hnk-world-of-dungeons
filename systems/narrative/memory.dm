/datum/animic_memory
    var
        owner_name = ""
        list/events = list()

    proc/AddEvent(datum/narrative_event/E)
        if(!E)
            return FALSE
        events += E
        return TRUE

    proc/GetRecent(limit = 5)
        var/list/result = list()
        var/count = 0
        for(var/i = events.len, i >= 1, i--)
            result += events[i]
            count++
            if(count >= limit)
                break
        return result
