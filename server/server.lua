ESX = exports["es_extended"]:getSharedObject()


function IsValueInArray(value, array)
    for _, val in pairs(array) do
        if val == value then
            return true
        end
    end
    return false
end

RegisterCommand(Config_S.Command["Name"], function (source, args, _)
    if not source == 0 then
        local xPlayer = ESX.GetPlayerFromId(source)
        if not xPlayer then
            return
        end

        if IsValueInArray(xPlayer.getGroup(), Config_S.Permissions) then
            local message = ""

            for key, value in pairs(args) do
                message = message .. value .. " "
            end
    
            Config_S.AnnounceTrigger(-1, message, GetPlayerName(source))
        else
            return
        end
    else
        local message = ""

        for key, value in pairs(args) do
            message = message .. value .. " "
        end

        Config_S.AnnounceTrigger(-1, message, "Console")
    end
end, false)