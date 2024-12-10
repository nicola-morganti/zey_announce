Config_S = {}

Config_S.Command = {
    ["Name"] = "announce"
}

Config_S.Permissions = {
    "admin"
}

Config_S.AnnounceTrigger = function (source, message, author)
    TriggerClientEvent("rs_hud_v2:SendAnnouncement", source, ("Announcement - %s"):format(author), message, 5000)
end