Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1800)
        if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.PoliceJobName then
            isPolice = true
		else
			isPolice = false
        end
		if ESX.PlayerData.job and ESX.PlayerData.job.name == Config.EMSJobName then
            isEMS = true
		else
			isEMS = false
        end
    end
end)


function setOutiftPoliceMale()
	if isPolice then
		SetPedComponentVariation(PlayerPedId(), 11, Config.PoliceMShirt, Config.PoliceMShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.PoliceMPants, Config.PoliceMPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 9, Config.PoliceMVest, Config.PoliceMVestTexture, 0)--Vest
		SetPedComponentVariation(PlayerPedId(), 6, Config.PoliceMShoes, Config.PoliceMShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.PoliceMArms, Config.PoliceMArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.PoliceMMask, Config.PoliceMMaskTexture, 0)--Mask	
		SetPedComponentVariation(PlayerPedId(), 7, Config.PoliceMHolster, Config.PoliceMHolsterTexture, 0)--Chain/Holster
		SetPedComponentVariation(PlayerPedId(), 8, Config.PoliceMBelt, Config.PoliceMBeltTexture, 0)
		SetPedPropIndex(PlayerPedId(), 0, Config.PoliceMHat, 0, true)
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
    
end
function setOutiftPoliceFemale()
	if isPolice then
		SetPedComponentVariation(PlayerPedId(), 11, Config.PoliceFShirt, Config.PoliceFShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.PoliceFPants, Config.PoliceFPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 9, Config.PoliceFVest, Config.PoliceFVestTexture, 0)--Vest
		SetPedComponentVariation(PlayerPedId(), 6, Config.PoliceFShoes, Config.PoliceFShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.PoliceFArms, Config.PoliceFArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.PoliceFMask, Config.PoliceFMaskTexture, 0)--Mask	
		SetPedComponentVariation(PlayerPedId(), 7, Config.PoliceFHolster, Config.PoliceFHolsterTexture, 0)--Chain/Holster
		SetPedComponentVariation(PlayerPedId(), 8, Config.PoliceFBelt, Config.PoliceFBeltTexture, 0)--Tshirt/Belt
		SetPedPropIndex(PlayerPedId(), 0, 0, 0, true)
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
    
end


function setOutiftFireMale()
	if isEMS then
		SetPedComponentVariation(PlayerPedId(), 11, Config.FireMShirt, Config.FireMShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.FireMPants, Config.FireMPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 6, Config.FireMShoes, Config.FireMShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.FireMArms, Config.FireMArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.FireMMask, Config.FireMMaskTexture, 0)--Mask	
		SetPedPropIndex(PlayerPedId(), 0, Config.FireMHelmet, Config.FireMHelmetTexture, true) -- Hat/ Helmet
		SetPedComponentVariation(PlayerPedId(), 8, 0, 0, 0) -- Removes extra things
		SetPedComponentVariation(PlayerPedId(), 7, 0, 0, 0)-- Removes 
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
end

function setOutiftFireFemale()
	if isEMS then
		SetPedComponentVariation(PlayerPedId(), 11, Config.FireFShirt, Config.FireFShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.FireFPants, Config.FireFPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 6, Config.FireFShoes, Config.FireFShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.FireFArms, Config.FireFArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.FireFMask, Config.FireFMaskTexture, 0)--Mask	
		SetPedPropIndex(PlayerPedId(), 0, Config.FireFHelmet, Config.FireFHelmetTexture, true) -- Hat/ Helmet
		SetPedComponentVariation(PlayerPedId(), 8, 1, 0, 0) -- Removes extra things
		SetPedComponentVariation(PlayerPedId(), 7, 0, 0, 0)-- Removes 
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
    
end



function setOutiftSheriffMale()
	if isPolice then
		SetPedComponentVariation(PlayerPedId(), 11, Config.SheriffMShirt, Config.SheriffMShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.SheriffMPants, Config.SheriffMPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 9, Config.SheriffMVest, Config.SheriffMVestTexture, 0)--Vest
		SetPedComponentVariation(PlayerPedId(), 6, Config.SheriffMShoes, Config.SheriffMShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.SheriffMArms, Config.SheriffMArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.SheriffMMask, Config.SheriffMMaskTexture, 0)--Mask	
		SetPedComponentVariation(PlayerPedId(), 7, Config.SheriffMHolster, Config.SheriffMHolsterTexture, 0)--Chain/Holster
		SetPedComponentVariation(PlayerPedId(), 8, Config.SheriffMBelt, Config.SheriffMBeltTexture, 0)
		SetPedPropIndex(PlayerPedId(), 0, Config.SheriffMHat, 0, true)
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
    
end


function setOutiftSheriffFemale()
	if isPolice then
		SetPedComponentVariation(PlayerPedId(), 11, Config.SheriffFShirt, Config.SheriffFShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.SheriffFPants, Config.SheriffFPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 9, Config.SheriffFVest, Config.SheriffFVestTexture, 0)--Vest
		SetPedComponentVariation(PlayerPedId(), 6, Config.SheriffFShoes, Config.SheriffFShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.SheriffFArms, Config.SheriffFArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.SheriffFMask, Config.SheriffFMaskTexture, 0)--Mask	
		SetPedComponentVariation(PlayerPedId(), 7, Config.SheriffFHolster, Config.SheriffFHolsterTexture, 0)--Chain/Holster
		SetPedComponentVariation(PlayerPedId(), 8, Config.SheriffFBelt, Config.SheriffFBeltTexture, 0)
		SetPedPropIndex(PlayerPedId(), 0, Config.SheriffFHat, 0, true)
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
    
end

function setOutiftEMSMale()
	if isEMS then
		SetPedComponentVariation(PlayerPedId(), 11, Config.EMSMShirt, Config.EMSMShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.EMSMPants, Config.EMSMPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 6, Config.EMSMShoes, Config.EMSMShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.EMSMArms, Config.EMSMArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.EMSMMask, Config.EMSMMaskTexture, 0)--Mask	
		SetPedPropIndex(PlayerPedId(), 0, Config.EMSMHelmet, Config.EMSMHelmetTexture, true) -- Hat/ Helmet
		SetPedComponentVariation(PlayerPedId(), 8, Config.EMSMBelt, Config.EMSMBeltTexture, 0)--Tshirt/Belt
		SetPedComponentVariation(PlayerPedId(), 7, 0, 0, 0)-- Removes 
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
end

function setOutiftEMSFemale()
	if isEMS then
		SetPedComponentVariation(PlayerPedId(), 11, Config.EMSFShirt, Config.EMSFShirtTexture, 0)--Shirt
		SetPedComponentVariation(PlayerPedId(), 4, Config.EMSFPants, Config.EMSFPantsTexture, 0)--Pants
		SetPedComponentVariation(PlayerPedId(), 6, Config.EMSFShoes, Config.EMSFShoesTexture, 0)--Shoes
		SetPedComponentVariation(PlayerPedId(), 3, Config.EMSFArms, Config.EMSFArmsTexture, 0)--Arms	
		SetPedComponentVariation(PlayerPedId(), 1, Config.EMSFMask, Config.EMSFMaskTexture, 0)--Mask	
		SetPedPropIndex(PlayerPedId(), 0, Config.EMSFHelmet, Config.EMSFHelmetTexture, true) -- Hat/ Helmet
		SetPedComponentVariation(PlayerPedId(), 8, Config.EMSFBelt, Config.EMSFBeltTexture, 0)--Tshirt/Belt
		SetPedComponentVariation(PlayerPedId(), 7, 0, 0, 0)-- Removes 
	else
		ESX.ShowNotification("You are not authorized to do this.")
	end
end