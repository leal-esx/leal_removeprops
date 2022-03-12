# leal_removeprops
Comando para remover props ( objetos ) da mão que poderão afetar a boa jogabilidade do player.


Para evitar numeros excessivos de resources no servidor poderá copiar o seguinte codigo para qualquer client.lua do seu servidor !

RegisterCommand("removermao", function()
    for _, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
        end
    end
end, false) 
