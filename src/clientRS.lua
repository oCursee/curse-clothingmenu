Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end
	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	ESX.PlayerData.job = job
end)


exports.qtarget:AddBoxZone("PoliceClothes", vector3(461.72, -995.9, 30.69), 3.4, 3.6, {
	name="PoliceClothes",
	heading=91,
	debugPoly=false,
	minZ=29.79,
	maxZ=35.99
    }, {
        options = {
            {
                event = "curse-openMenu",
                icon = "fas fa-tshirt",
                label = "Change Clothes",
            },
        },
        job = {"police", "ambulance", "mechanic"},
        distance = 1.5
})
exports.qtarget:AddBoxZone("DoctorClothes", vector3(305.88, -597.29, 43.28), 3.4, 3.6, {
	name="Doctor Clothes",
	heading=91,
	debugPoly=false,
	minZ=39.79,
	maxZ=45.99
    }, {
        options = {
            {
                event = "curse-openMenu",
                icon = "fas fa-tshirt",
                label = "Change Clothes",
            },
        },
        job = {"police", "ambulance", "mechanic"},
        distance = 1.5
})
	
