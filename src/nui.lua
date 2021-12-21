local display = false
local cam = nil
local mPed = GetHashKey('mp_m_freemode_01')


--[[
RegisterCommand("clothingtest", function(source, args)
    local ped = PlayerPedId()
    local pPos = GetEntityCoords(ped)
    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, true)
    SetCamCoord(cam, pPos.x-3, pPos.y, pPos.z)
	PointCamAtCoord(cam, pPos.x, pPos.y, pPos.z)
    SetDisplay(not display)
end)

--]]

AddEventHandler("curse-openMenu", function ()
    local ped = PlayerPedId()
    local pPos = GetEntityCoords(ped)
    cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
    SetCamActive(cam, true)
    RenderScriptCams(true, false, 1, true, true)
    SetCamCoord(cam, pPos.x-3, pPos.y, pPos.z)
	PointCamAtCoord(cam, pPos.x, pPos.y, pPos.z)
    SetDisplay(not display)
end)




RegisterCommand("delCam", function(source, args)
    SetCamActive(cam, false)
end)

RegisterNUICallback("exit", function(data)
    SetDisplay(false)
    SetCamActive(cam, false)
    RenderScriptCams(false, false, 0, true, true)
    cam = nil
end)

RegisterNUICallback("main", function(data)
    SetDisplay(false)
end)

RegisterNUICallback("police", function()
    if GetEntityModel(PlayerPedId()) == mPed then
        setOutiftPoliceMale()
        print('Change to Police')
    else
        setOutiftPoliceFemale()
    end   
end)


RegisterNUICallback("fire", function()
    if GetEntityModel(PlayerPedId()) == mPed then
        setOutiftFireMale()
        print('Change to Fire')
    else
    setOutiftFireFemale()
    end
    
end)

RegisterNUICallback("sheriff", function()
    if GetEntityModel(PlayerPedId()) == mPed then
        setOutiftSheriffMale()
        print('Change to Sheriff')
    else
    setOutiftSheriffFemale()
    end
end)

RegisterNUICallback("paramedic", function()
    if GetEntityModel(PlayerPedId()) == mPed then
        setOutiftEMSMale()
        print('Change to paramedic')
    else
    setOutiftEMSFemale()
    end
end)

RegisterNUICallback("extra2", function()
    print('Extra 2')
end)

RegisterNUICallback("error", function(data)
    chat(data.error, {255,0,0})
    SetDisplay(false)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
            
        DisableControlAction(0, 1, display)
        DisableControlAction(0, 2, display) 
        DisableControlAction(0, 142, display) 
        DisableControlAction(0, 18, display) 
        DisableControlAction(0, 322, display) 
        DisableControlAction(0, 106, display) 
    end
end)




