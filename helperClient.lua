------------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------------------
-- Player Notification. Shows as player notification headshot.
function PlayerNotification(SenderName, Subject, MessageText, IconType, PlaySound)
    local handle = RegisterPedheadshot(PlayerPedId())
    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
        Citizen.Wait(0)
    end
    local txd = GetPedheadshotTxdString(handle)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(MessageText)
    local title = SenderName
    local subtitle = Subject
    local iconType = IconType
    EndTextCommandThefeedPostMessagetext(txd, txd, false, iconType, title, subtitle)
    EndTextCommandThefeedPostTicker(false, true)
    UnregisterPedheadshot(handle)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true) end
end
exports("PlayerNotification", PlayerNotification)
------------------------------------------------------------------------------------------------------------------------------------------
-- Character Notification. !!DOES NOT LOAD DICTIONARIES!! 
function CharacterNotification(CharacterTxd, SenderName, Subject, MessageText, IconType, PlaySound)
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(MessageText)
    local title = SenderName
    local subtitle = Subject
    local iconType = IconType
    EndTextCommandThefeedPostMessagetext(CharacterTxd, CharacterTxd, false, iconType, title, subtitle)
    EndTextCommandThefeedPostTicker(false, true)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true) end
end
exports("CharacterNotification", CharacterNotification)
------------------------------------------------------------------------------------------------------------------------------------------
-- Dictionary Notification. uses Dictionary Textures.
function DictionaryNotification(notiDict, NotiPic, SenderName, Subject, MessageText, IconType, PlaySound)
    RequestStreamedTextureDict(notiDict)
    while not HasStreamedTextureDictLoaded(notiDict) do
        Citizen.Wait(0)
    end
    BeginTextCommandThefeedPost("STRING")
    AddTextComponentSubstringPlayerName(MessageText)
    local title = SenderName
    local subtitle = Subject
    local iconType = IconType
    EndTextCommandThefeedPostMessagetext(notiDict, NotiPic, false, iconType, title, subtitle)
    EndTextCommandThefeedPostTicker(false, true)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true) end
    SetStreamedTextureDictAsNoLongerNeeded(notiDict)
end
exports("DictionaryNotification", DictionaryNotification)
------------------------------------------------------------------------------------------------------------------------------------------
-- Basic Helper Text. 
function BasicHelperText(helperName, helperText, helperDuration, PlaySound)
    AddTextEntry(helperName, helperText)
    BeginTextCommandDisplayHelp(helperName)
    EndTextCommandDisplayHelp(0, false, false, helperDuration)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true) end
end
exports("BasicHelperText", BasicHelperText)
------------------------------------------------------------------------------------------------------------------------------------------
-- Floating Helper Text
function FloatingHelperText(helperName, helperText, helperVector3, helperDuration, PlaySound)
    AddTextEntry(helperName, helperText)
    SetFloatingHelpTextWorldPosition(0, helperVector3)
    SetFloatingHelpTextStyle(0, true, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp(helperName)
    EndTextCommandDisplayHelp(1, false, false, helperDuration)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true) end
end
exports("FloatingHelperText", FloatingHelperText)
------------------------------------------------------------------------------------------------------------------------------------------
-- Subtitles Text
function MissionHelperText(helperName, helperText, helperDuration, PlaySound)
    AddTextEntry(helperName, helperText)
    BeginTextCommandPrint(helperName)
    EndTextCommandPrint(helperDuration, 1)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", true) end
end
exports("MissionHelperText", MissionHelperText)
------------------------------------------------------------------------------------------------------------------------------------------
-- Player Stats
function PlayerStatsNotification(helperStatName, oldValue, newValue, helperDuration, PlaySound)
    local handle = RegisterPedheadshot(PlayerPedId())
    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do
        Citizen.Wait(0)
    end
    local txd = GetPedheadshotTxdString(handle)
    BeginTextCommandThefeedPost("PS_UPDATE")
    AddTextComponentInteger(oldValue)
    local p1 = 14
    EndTextCommandThefeedPostStats(helperStatName, 13, newValue, oldValue, false, txd, txd)
    EndTextCommandThefeedPostTicker(false, true)
    UnregisterPedheadshot(handle)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true) end
end
exports("PlayerStatsNotification", PlayerStatsNotification)
------------------------------------------------------------------------------------------------------------------------------------------
-- Custom Stats
function CustomStatsNotification(cStatName, cstatText, notiDict, texturename, oldValue, newValue, helperDuration, PlaySound)
    RequestStreamedTextureDict(notiDict)
    while not HasStreamedTextureDictLoaded(notiDict) do
        Citizen.Wait(0)
    end
    AddTextEntry(cStatName, cstatText)
    BeginTextCommandThefeedPost("PS_UPDATE")
    AddTextComponentInteger(oldValue)
    local p1 = 14
    EndTextCommandThefeedPostStats(cStatName, 13, newValue, oldValue, false, notiDict, texturename)
    EndTextCommandThefeedPostTicker(false, true)
    UnregisterPedheadshot(handle)
    if PlaySound then PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true) end
    SetStreamedTextureDictAsNoLongerNeeded(notiDict)
end
exports("CustomStatsNotification", CustomStatsNotification)
------------------------------------------------------------------------------------------------------------------------------------------