RegisterCommand("removerobjeto", function()
    for _, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteObject(v)
        end
    end
end, false)

-- Leal#9186
