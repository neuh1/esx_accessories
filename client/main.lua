local Keys = {

	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57, 

	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177, 

	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,

	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,

	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,

	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70, 

	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,

	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,

	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118

}

	

ESX									= nil

local HasAlreadyEnteredMarker		= false

local LastZone						= nil

local CurrentAction					= nil

local CurrentActionMsg				= ''

local CurrentActionData				= {}

local isDead						= false

local lastSkin = {}

local newSkin = {}



local clearSkinMale = {

	['tshirt_1'] = 15,

	['tshirt_2'] = 0,

	['torso_1'] = 15,

	['torso_2'] = 0,

	['chain_1'] = 0,

	['chain_2'] = 0,

	['arms'] = 15,

	['pants_1'] = 61,

	['pants_2'] = 0,

	['shoes_1'] = 34,

	['shoes_2'] = 0,

	['helmet_1'] = -1,

	['helmet_2'] = 0,

	['ears_1'] = -1,

	['ears_2'] = 0,

	['mask_1'] = 0,

	['mask_2'] = 0,

	['glasses_1'] = 0,

	['glasses_2'] = 0,

	['bags_1'] = 0,

	['bags_2'] = 0,

	['hair_1'] = 0,

	['hair_2'] = 0,

}



local clearSkinFemale = {

	['tshirt_1'] = 15,

	['tshirt_2'] = 0,

	['torso_1'] = 15,

	['torso_2'] = 0,

	['chain_1'] = 0,

	['chain_2'] = 0,

	['arms'] = 15,

	['pants_1'] = 15,

	['pants_2'] = 0,

	['shoes_1'] = 35,

	['shoes_2'] = 0,

	['helmet_1'] = -1,

	['helmet_2'] = 0,

	['ears_1'] = -1,

	['ears_2'] = 0,

	['mask_1'] = 0,

	['mask_2'] = 0,

	['glasses_1'] = 5,

	['glasses_2'] = 0,

	['bags_1'] = 0,

	['bags_2'] = 0,

	['hair_1'] = 0,

	['hair_2'] = 0,

}

local HairStyles = {

	[1] = 0,

	[2] = 0,

	[3] = 0,

	[4] = 0,

	[5] = 0,

	[6] = 0,

	[7] = 0,

	[8] = 0,

	[9] = 0,

	[10] = 0,

	[11] = 0,

	[12] = 0,

	[13] = 0,

	[14] = 0,

	[15] = 0,

	[16] = 0,

	[17] = 0,

	[18] = 0,

	[19] = 0,

	[20] = 0,

	[21] = 0,

	[22] = 0,

	[23] = 0,

	[24] = 0,

	[25] = 0,

	[26] = 0,

	[27] = 0,

	[28] = 0,

	[29] = 0,

	[30] = 0,

	[31] = 0,

	[32] = 0,

	[33] = 0,

	[34] = 0,

	[35] = 0,

	[36] = 0,

	[37] = 0,

	[38] = 0,

	[39] = 0,

	[40] = 0,

	[41] = 0,

	[42] = 0,

	[43] = 0,

	[44] = 0,

	[45] = 0,

	[46] = 0,

	[47] = 0,

	[48] = 0,

	[49] = 0,

	[50] = 0,

	[51] = 0,

	[52] = 0,

	[53] = 0,

	[54] = 0,

	[55] = 0,

	[56] = 0,

	[57] = 0,

	[58] = 0,

	[59] = 0,

	[60] = 0,

	[61] = 0,

	[62] = 0,

	[63] = 0,

	[64] = 0,

	[65] = 0,

	[66] = 0,

	[67] = 0,

	[68] = 0,

	[69] = 0,

	[70] = 0,

	[71] = 0,

	[72] = 0,

	[73] = 0,

	[74] = 0,

	[75] = 0,

	[77] = 0,

	[78] = 0,

	[80] = 0,

	[81] = 0,

	[82] = 0,

	[83] = 0,

	[84] = 0,

	[85] = 0,

	[86] = 0,

	[87] = 0,

	[88] = 0,

	[89] = 0,

	[90] = 0,

	[91] = 0,

	[92] = 0,

	[93] = 0,

	[94] = 0,

	[96] = 0,

	[97] = 0,

	[98] = 0,

	[99] = 0,

	[100] = 0,

	[101] = 0,

	[102] = 0,

	[103] = 0,

	[104] = 0,

	[105] = 0,

	[106] = 0,

	[107] = 0,

	[108] = 0,

	[109] = 0,

	[110] = 0,

	[111] = 0,

	[112] = 0,

	[113] = 0,

	[114] = 0,

	[115] = 0,

	[116] = 0,

	[117] = 0,

	[118] = 0,

	[119] = 0,

	[120] = 0,

	[121] = 0,

	[122] = 0,

	[123] = 0,

	[124] = 0,

	[125] = 0,

	[126] = 0,

	[127] = 0,

	[128] = 0,

	[129] = 0,

	[130] = 0,

	[131] = 0,

	[132] = 0,

	[133] = 0,

	[134] = 0,

	[135] = 0,

	[136] = 0,

	[137] = 0,

	[138] = 0,

	[139] = 0,

	[140] = 0,

	[141] = 0,

	[142] = 0,

	[143] = 0,

	[144] = 0,

	[145] = 0,

	[146] = 0,

	[147] = 0,

	[148] = 0,

	[149] = 0,

}

local HairStylesFemale = {

	[1] = 0,

	[2] = 0,

	[3] = 0,

	[4] = 0,

	[5] = 0,

	[6] = 0,

	[7] = 0,

	[8] = 0,

	[9] = 0,

	[10] = 0,

	[11] = 0,

	[12] = 0,

	[13] = 0,

	[14] = 0,

	[15] = 0,

	[16] = 0,

	[17] = 0,

	[18] = 0,

	[19] = 0,

	[20] = 0,

	[21] = 0,

	[22] = 0,

	[23] = 0,

	[24] = 0,

	[25] = 0,

	[26] = 0,

	[27] = 0,

	[28] = 0,

	[29] = 0,

	[30] = 0,

	[31] = 0,

	[32] = 0,

	[33] = 0,

	[34] = 0,

	[35] = 0,

	[36] = 0,

	[37] = 0,

	[38] = 0,

	[39] = 0,

	[40] = 0,

	[41] = 0,

	[42] = 0,

	[43] = 0,

	[44] = 0,

	[45] = 0,

	[46] = 0,

	[47] = 0,

	[48] = 0,

	[49] = 0,

	[50] = 0,

	[51] = 0,

	[52] = 0,

	[53] = 0,

	[54] = 0,

	[55] = 0,

	[56] = 0,

	[57] = 0,

	[58] = 0,

	[59] = 0,

	[60] = 0,

	[61] = 0,

	[62] = 0,

	[63] = 0,

	[64] = 0,

	[65] = 0,

	[66] = 0,

	[67] = 0,

	[68] = 0,

	[69] = 0,

	[70] = 0,

	[71] = 0,

	[72] = 0,

	[73] = 0,

	[74] = 0,

	[75] = 0,

	[77] = 0,

	[78] = 0,

	[80] = 0,

	[81] = 0,

	[82] = 0,

	[83] = 0,

	[84] = 0,

	[85] = 0,

	[86] = 0,

	[87] = 0,

	[88] = 0,

	[89] = 0,

	[90] = 0,

	[91] = 0,

	[92] = 0,

	[93] = 0,

	[94] = 0,

	[96] = 0,

	[97] = 0,

	[98] = 0,

	[99] = 0,

	[100] = 0,

	[101] = 0,

	[102] = 0,

	[103] = 0,

	[104] = 0,

	[105] = 0,

	[106] = 0,

	[107] = 0,

	[108] = 0,

	[109] = 0,

	[110] = 0,

	[111] = 0,

	[112] = 0,

	[113] = 0,

	[114] = 0,

	[115] = 0,

	[116] = 0,

	[117] = 0,

	[118] = 0,

	[119] = 0,

	[120] = 0,

	[121] = 0,

	[122] = 0,

	[123] = 0,

	[124] = 0,

	[125] = 0,

	[126] = 0,

	[127] = 0,

	[128] = 0,

	[129] = 0,

	[130] = 0,

	[131] = 0,

	[132] = 0,

	[133] = 0,

	[134] = 0,

	[135] = 0,

	[136] = 0,

	[137] = 0,

	[138] = 0,

	[139] = 0,

	[140] = 0,

	[141] = 0,

	[142] = 0,

	[143] = 0,

	[144] = 0,

	[145] = 0,

	[146] = 0,

	[147] = 0,

	[148] = 0,

	[149] = 0,

}

CreateThread(function()

	while ESX == nil do

		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

		Citizen.Wait(0)

	end

end)

local whichSkin = nil

local updatedSkin = {}

local set = true

function OpenAccessoryMenu()

	UpdateSkin()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'set_unset_accessory', {

		title = _U('set_unset'),

		align = 'right',

		elements = {

			{label = 'Czapka / Hełm', value = 'helmet_1', value2 = 'helmet_2', anim = {on = {lib = 'missheistdockssetup1hardhat@', anim  = 'put_on_hat', delay = 400}, off = {lib = 'veh@common@fp_helmet@', anim  = 'take_off_helmet_stand', delay = 400}}},

			

			{label = 'Okulary', 	value = 'glasses_1', value2 = 'glasses_2', anim = {on = {lib = 'mp_masks@on_foot', anim  = 'put_on_mask', delay = 0}, off = {lib = 'missfbi4', anim  = 'takeoff_mask', delay = 1000}}},

	

			{label = 'Łańcuch / Krawat / Plakietka',		value = 'chain_1', value2 = 'chain_2', anim = {on = {lib = 'clothingtie', anim  = 'try_tie_positive_a', delay = 2000}, off = {lib = 'clothingtie', anim  = 'try_tie_positive_a', delay = 2000}}},		

			

			{label = 'Kolczyki', 		value = 'ears_1', value2 = 'ears_2', anim = {on = {lib = 'mp_masks@standard_car@rds@', anim  = 'put_on_mask', delay = 0}, off = {lib = 'mp_masks@standard_car@rds@', anim  = 'put_on_mask', delay = 0}}},

			

			{label = 'Maska', 		value = 'mask_1', value2 = 'mask_2', anim = {on = {lib = 'mp_masks@on_foot', anim  = 'put_on_mask', delay = 0}, off = {lib = 'missfbi4', anim  = 'takeoff_mask', delay = 200}}},

			

			{label = 'Tułów',value = 'tshirt_1', value2 = 'tshirt_2', anim = {on = {lib = 'clothingshirt', anim  = 'try_shirt_positive_a', delay = 500}, off = {lib = 'clothingshirt', anim  = 'try_shirt_positive_a', delay = 500}}},

			

			{label = 'Nogi',		value = 'pants_1', value2 = 'pants_2', anim = {on = {lib = 'clothingtrousers', anim  = 'try_trousers_neutral_c', delay = 1000}, off = {lib = 'clothingtrousers', anim  = 'try_trousers_neutral_c', delay = 1000}}},

			

			{label = 'Stopy', 		value = 'shoes_1', value2 = 'shoes_2', anim = {on = {lib = 'clothingshoes', anim  = 'try_shoes_positive_d', delay = 2000}, off = {lib = 'clothingshoes', anim  = 'try_shoes_positive_d', delay = 2000}}},

			

			{label = 'Torba / Plecak',value = 'bags_1', value2 = 'bags_2', anim = {on = {lib = 'clothingshirt', anim  = 'check_out_a', delay = 1000, cancel = true}, off = {lib = 'skydive@parachute@', anim  = 'chute_off', delay = 300}}},



			{label = 'Schowaj włosy',value = 'wlosy', value2 = 'hair_2', anim = {on = {lib = 'clothingshirt', anim  = 'check_out_a', delay = 1000, cancel = true}, off = {lib = 'clothingshirt', anim  = 'check_out_a', delay = 100}}},

			{label = 'Wyciągnij włosy',value = 'unhair', value2 = 'hair_2', anim = {on = {lib = 'clothingshirt', anim  = 'check_out_a', delay = 1000, cancel = true}, off = {lib = 'clothingshirt', anim  = 'check_out_a', delay = 100}}},

			{label = 'Schowaj twarz pod maskę',value = 'podMaske', value2 = 'hair_2', anim = {on = {lib = 'clothingshirt', anim  = 'check_out_a', delay = 1000, cancel = true}, off = {lib = 'clothingshirt', anim  = 'check_out_a', delay = 100}}},

		}

	},

	function(data, menu)



		UpdateSkin()

		local currentData = data.current

		local delay = 0

		whichSkin = tostring(currentData.value)

		local playerPed = PlayerPedId()

	

		TriggerEvent('skinchanger:getSkin', function(skin)

			if skin.sex == 0 and (updatedSkin[currentData.value] ~= clearSkinMale[currentData.value] or currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15) then

				PA(currentData.anim.off.lib, currentData.anim.off.anim)

				delay = currentData.anim.off.delay

				newSkin[currentData.value] = clearSkinMale[currentData.value]

				if currentData.value == 'tshirt_1' then

					newSkin['arms'] = clearSkinMale['arms']

					newSkin['torso_1'] = clearSkinMale['torso_1']

				end

				if currentData.value == 'shoes_1' then

					newSkin['shoes_2'] = clearSkinMale[currentData.value2]

				end

				if currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15 then

					newSkin['torso_1'] = clearSkinMale['torso_1']

				end

				if currentData.value2 ~= '' and  currentData.value2 ~= 'tshirt_1' then

					newSkin[currentData.value2] = clearSkinMale[currentData.value2]

				end

			

			elseif skin.sex == 1 and (updatedSkin[currentData.value] ~= clearSkinFemale[currentData.value] or currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15) then

				PA(currentData.anim.off.lib, currentData.anim.off.anim)

				delay = currentData.anim.off.delay

				newSkin[currentData.value] = clearSkinFemale[currentData.value]

				if currentData.value == 'tshirt_1' then

					newSkin['arms'] = clearSkinFemale['arms']

					newSkin['torso_1'] = clearSkinFemale['torso_1']

				end

				if currentData.value == 'shoes_1' then

					newSkin['shoes_2'] = clearSkinMale[currentData.value2]

				end

				if currentData.value2 ~= '' then

					newSkin[currentData.value2] = clearSkinMale[currentData.value2]

				end

				if currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15 then

					newSkin['torso_1'] = clearSkinFemale['torso_1']

				end

			else

				PA(currentData.anim.on.lib, currentData.anim.on.anim)

				delay = currentData.anim.on.delay

				newSkin[currentData.value] = lastSkin[currentData.value]

				if currentData.value == 'tshirt_1' then

					newSkin['torso_1'] = lastSkin['torso_1']

					newSkin['arms'] = lastSkin['arms']

				end



				if currentData.value2 ~= '' then

					newSkin[currentData.value2] = lastSkin[currentData.value2]

				end

			end

				

			Wait(1000 + delay)

			ClearPedTasks(PlayerPedId())

			TriggerEvent('skinchanger:loadClothes', skin, newSkin)

			local _accessory = whichSkin

			

			if (_accessory == "helmet" or _accessory == "glasses" or _accessory == "ears" or _accessory == "mask")  then

				ESX.TriggerServerCallback('esx_accessories:get', function(hasAccessory, accessorySkin)

			

					if hasAccessory  then

						TriggerEvent('skinchanger:getSkin', function(skin)

							local mAccessory = -1

							local mColor = 0



							if _accessory == "mask" then

								mAccessory = 0

							elseif _accessory == "glasses" then

								if skin.sex == 0 then mAccessory = 0 else mAccessory = 5 end

							end



							if skin[_accessory .. '_1'] == mAccessory then

								mAccessory = accessorySkin[_accessory .. '_1']

								mColor = accessorySkin[_accessory .. '_2']

							end



							local accessorySkin = {}

							accessorySkin[_accessory .. '_1'] = mAccessory

							accessorySkin[_accessory .. '_2'] = mColor

							TriggerEvent('skinchanger:loadClothes', skin, accessorySkin)

						end)

					else

						ESX.ShowNotification(_U('no_' .. _accessory))

					end

				end, whichSkin)

			end

		end)

		

		if data.current.value == 'wlosy' then

			Wait(3000)

			TriggerEvent('esx_accessories:moveHair')

		end

		if data.current.value == 'podMaske' then

			Wait(3000)

			TriggerEvent('esx_accessories:twarzpodMaske')

		end

		if data.current.value == 'unhair' then

			Wait(3000)

			TriggerEvent('esx_accessories:moveunHair')

		end

	end,

	function(data, menu)

		menu.close()

	end)

end



RegisterNetEvent('esx_accessories:twarzpodMaske')

AddEventHandler('esx_accessories:twarzpodMaske', function()

	TriggerEvent('skinchanger:getSkin', function(skin)

	if skin.sex == 0 then

		SetPedHeadBlendData(PlayerPedId(), 0, skin['face_2'], skin['face_3'], skin['skin'], skin['skin_2'], skin['skin_3'], skin['blend_face'] / 10, skin['blend_skin'] / 10, skin['blend'] / 10, true)

		updatedSkin['face'] = 0

	else

		SetPedHeadBlendData(PlayerPedId(), 0, skin['face_2'], skin['face_3'], skin['skin'], skin['skin_2'], skin['skin_3'], skin['blend_face'] / 10, skin['blend_skin'] / 10, skin['blend'] / 10, true)

		updatedSkin['face'] = 0

		end

		TriggerEvent('esx_accessories:moveHair')

	end)

end)

-- RegisterCommand('ped', function(source, args, rawCommand)

-- 	SetPedHeadBlendData(PlayerPedId(), 0, skin['face_2'], skin['face_3'], skin['skin'], skin['skin_2'], skin['skin_3'], skin['blend_face'] / 10, skin['blend_skin'] / 10, skin['blend'] / 10, true)

-- end, false)

RegisterNetEvent('esx_accessories:moveunHair')

AddEventHandler('esx_accessories:moveunHair', function()

	TriggerEvent('skinchanger:getSkin', function(skin)

		SetPedComponentVariation(PlayerPedId(), 2, skin.hair_1, skin.hair_2, 0)

	end)	

end)



RegisterNetEvent('esx_accessories:moveHair')

AddEventHandler('esx_accessories:moveHair', function()

	local playerPed = PlayerPedId()

			TriggerEvent('skinchanger:getSkin', function(skin)

			if skin.sex == 0 then

				for k,v in pairs(HairStyles) do

					local currentHair = skin

						if skin.hair_1 == k then

							SetPedComponentVariation(playerPed, 2, v, skin.hair_2, 0)

							updatedSkin['hair_1'] = v

						end

					end

				else

				for k,v in pairs(HairStylesFemale) do

					local currentHair = skin

						if skin.hair_1 == k then

							SetPedComponentVariation(playerPed, 2, v, skin.hair_2, 0)

							updatedSkin['hair_1'] = v

							newSkin['hair_1'] = v

						end

					end

				end

			end)	

end)

RegisterNetEvent('esx_accessories:takeOtherClothesOff')

AddEventHandler('esx_accessories:takeOtherClothesOff', function(which)

	TakeOtherClothesOff(which)

end)



function TakeOtherClothesOff(userData)

	UpdateSkin()

	local currentData = userData

	local delay = 0

	whichSkin = tostring(currentData.value)

	TriggerEvent('skinchanger:getSkin', function(skin)

		if skin.sex == 0 and (updatedSkin[currentData.value] ~= clearSkinMale[currentData.value] or currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15) then

			newSkin[currentData.value] = clearSkinMale[currentData.value]

			if currentData.value == 'tshirt_1' then

				newSkin['arms'] = clearSkinMale['arms']

				newSkin['torso_1'] = clearSkinMale['torso_1']

			end

			if currentData.value == 'shoes_1' then

				newSkin['shoes_2'] = clearSkinMale[currentData.value2]

			end

			if currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15 then

				newSkin['torso_1'] = clearSkinMale['torso_1']

			end

			if currentData.value2 ~= '' and  currentData.value2 ~= 'tshirt_1' then

				newSkin[currentData.value2] = clearSkinMale[currentData.value2]

			end

		elseif skin.sex == 1 and (updatedSkin[currentData.value] ~= clearSkinFemale[currentData.value] or currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15) then

			newSkin[currentData.value] = clearSkinFemale[currentData.value]

			if currentData.value == 'tshirt_1' then

				newSkin['arms'] = clearSkinFemale['arms']

				newSkin['torso_1'] = clearSkinFemale['torso_1']

			end

			if currentData.value == 'shoes_1' then

				newSkin['shoes_2'] = clearSkinMale[currentData.value2]

			end

			if currentData.value2 ~= '' then

				newSkin[currentData.value2] = clearSkinMale[currentData.value2]

			end

			if currentData.value == 'tshirt_1' and updatedSkin[currentData.value] == 15 and updatedSkin['torso_1'] ~= 15 then

				newSkin['torso_1'] = clearSkinFemale['torso_1']

			end

		else

			newSkin[currentData.value] = lastSkin[currentData.value]

			if currentData.value == 'tshirt_1' then

				newSkin['torso_1'] = lastSkin['torso_1']

				newSkin['arms'] = lastSkin['arms']

			end

			if currentData.value2 ~= '' then

				newSkin[currentData.value2] = lastSkin[currentData.value2]

			end

		end

			

		Wait(1000 + delay)

		ClearPedTasks(PlayerPedId())

		TriggerEvent('skinchanger:loadClothes', skin, newSkin)

		local _accessory = whichSkin

		

		if (_accessory == "helmet" or _accessory == "glasses" or _accessory == "ears" or _accessory == "mask")  then

			ESX.TriggerServerCallback('esx_accessories:get', function(hasAccessory, accessorySkin)

		

				if hasAccessory  then

					TriggerEvent('skinchanger:getSkin', function(skin)

						local mAccessory = -1

						local mColor = 0



						if _accessory == "mask" then

							mAccessory = 0

						elseif _accessory == "glasses" then

							if skin.sex == 0 then mAccessory = 0 else mAccessory = 5 end

						end



						if skin[_accessory .. '_1'] == mAccessory then

							mAccessory = accessorySkin[_accessory .. '_1']

							mColor = accessorySkin[_accessory .. '_2']

						end



						local accessorySkin = {}

						accessorySkin[_accessory .. '_1'] = mAccessory

						accessorySkin[_accessory .. '_2'] = mColor

						TriggerEvent('skinchanger:loadClothes', skin, accessorySkin)

					end)

				else

					ESX.ShowNotification(_U('no_' .. _accessory))

				end

			end, whichSkin)

		end

	end)

end





function UpdateSkin()

	TriggerEvent('skinchanger:getSkin', function(skin)

		updatedSkin = skin

		newSkin = skin

		if skin.sex == 0 then

			for i in pairs(skin) do

				if lastSkin[i] == nil then

					lastSkin[i] = skin[i]

				elseif clearSkinMale[i] ~= nil and skin[i] ~= clearSkinMale[i] then

					lastSkin[i] = skin[i]

				end

			end

		else

			for i in pairs(skin) do

				if lastSkin[i] == nil then

					lastSkin[i] = skin[i]

				elseif clearSkinFemale[i] ~= nil and skin[i] ~= clearSkinFemale[i] then

					lastSkin[i] = skin[i]

				end

			end

		end

	end)

end



function PA(lib, anim)

	RequestAnimDict(lib)

	while not HasAnimDictLoaded(lib) do

		Citizen.Wait(10)

	end

	TaskPlayAnim(PlayerPedId(), lib, anim, 8.0, 8.0, -1, 50, 0, false, false, false)

end



function OpenShopMenu(accessory)

	local _accessory = string.lower(accessory)

	local restrict = {}

	restrict = { _accessory .. '_1', _accessory .. '_2' }

	TriggerEvent('esx_skin:openRestrictedMenu', function(data, menu)

		menu.close()

		ESX.UI.Menu.Open(

			'default', GetCurrentResourceName(), 'shop_confirm',

			{

				title = _U('valid_purchase'),

				align = 'bottom-right',

				elements = {

					{label = _U('yes'), value = 'yes'},

					{label = _U('no'), value = 'no'},

				}

			},

			function(data, menu)

				menu.close()

				if data.current.value == 'yes' then

					ESX.TriggerServerCallback('esx_accessories:checkMoney', function(hasEnoughMoney)

						if hasEnoughMoney then

							TriggerServerEvent('esx_accessories:pay')

							TriggerEvent('skinchanger:getSkin', function(skin)

								TriggerServerEvent('esx_accessories:save', skin, accessory)

							end)

						else

							TriggerEvent('esx_skin:getLastSkin', function(skin)

								TriggerEvent('skinchanger:loadSkin', skin)

							end)

							--ESX.ShowNotification(_U('not_enough_money'))

							exports['mythic_notify']:SendAlert('inform', _U('no_enough_money'))

						end

					end)

				end

				if data.current.value == 'no' then

					local player = Citizen.InvokeNative(0x43A66C31C68491C0, -1)

					TriggerEvent('esx_skin:getLastSkin', function(skin)

						TriggerEvent('skinchanger:loadSkin', skin)

					end)

					if accessory == "Ears" then

						ClearPedProp(player, 2)

					elseif accessory == "Mask" then

						SetPedComponentVariation(player, 1, 0 ,0 ,2)

						

					elseif accessory == "Helmet" then

						ClearPedProp(player, 0)

					elseif accessory == "Glasses" then

						SetPedPropIndex(player, 1, -1, 0, 0)

					end

				end

				CurrentAction	 = 'shop_menu'

				CurrentActionMsg  = _U('press_access')

				CurrentActionData = {}

			end,

			function(data, menu)

				menu.close()

				CurrentAction	 = 'shop_menu'

				CurrentActionMsg  = _U('press_access')

				CurrentActionData = {}



			end)

	end, 

	function(data, menu)

		menu.close()

		CurrentAction     = 'shop_menu'

		CurrentActionMsg  = _U('press_access')

		CurrentActionData = {}

	end, restrict)

end



AddEventHandler('playerSpawned', function()

	isDead = false

end)



AddEventHandler('esx:onPlayerDeath', function()

	isDead = true

end)



AddEventHandler('esx_accessories:hasEnteredMarker', function(zone)

	CurrentAction     = 'shop_menu'

	CurrentActionMsg  = _U('press_access')

	CurrentActionData = { accessory = zone }

end)



AddEventHandler('esx_accessories:hasExitedMarker', function(zone)

	ESX.UI.Menu.CloseAll()

	CurrentAction = nil

end)



CreateThread(function()

	for k,v in pairs(Config.ShopsBlips) do

		if v.Pos ~= nil then

			for i=1, #v.Pos, 1 do

				local blip = AddBlipForCoord(v.Pos[i].x, v.Pos[i].y, v.Pos[i].z)

				SetBlipSprite (blip, v.Blip.sprite)

				SetBlipDisplay(blip, 4)

				SetBlipScale  (blip, 0.7)

				SetBlipColour (blip, v.Blip.color)

				SetBlipAsShortRange(blip, true)

				BeginTextCommandSetBlipName("STRING")

				AddTextComponentString(_U('shop') .. ' ' .. _U(string.lower(k)))

				EndTextCommandSetBlipName(blip)

			end

		end

	end

end)



CreateThread(function()

	while true do

		Citizen.Wait(5)

		local coords, sleep = GetEntityCoords(Citizen.InvokeNative(0x43A66C31C68491C0, -1)), true

		for k,v in pairs(Config.Zones) do

			for i = 1, #v.Pos, 1 do

				if(Config.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, true) < Config.DrawDistance) then

					sleep = false

					ESX.DrawMarker(vec3( v.Pos[i].x, v.Pos[i].y, v.Pos[i].z))

				end

			end

		end

		if sleep then

			Citizen.Wait(500)

		end

	end

end)



CreateThread(function()

	while true do

		Citizen.Wait(10)

		local coords, sleep     = GetEntityCoords(Citizen.InvokeNative(0x43A66C31C68491C0, -1)), true

		local isInMarker  = false

		local currentZone = nil

		for k,v in pairs(Config.Zones) do

			for i = 1, #v.Pos, 1 do

				if(GetDistanceBetweenCoords(coords, v.Pos[i].x, v.Pos[i].y, v.Pos[i].z, true) < Config.Size.x) then

					sleep = false

					isInMarker  = true

					currentZone = k

				end

			end

		end

		if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then

			HasAlreadyEnteredMarker = true

			LastZone = currentZone

			TriggerEvent('esx_accessories:hasEnteredMarker', currentZone)

		end

		if not isInMarker and HasAlreadyEnteredMarker then

			HasAlreadyEnteredMarker = false

			TriggerEvent('esx_accessories:hasExitedMarker', LastZone)

		end

		if sleep then

			Citizen.Wait(500)

		end

	end

end)



CreateThread(function()

	while true do

		Citizen.Wait(1)

		if CurrentAction ~= nil then

			SetTextComponentFormat('STRING')

			AddTextComponentString(CurrentActionMsg)

			DisplayHelpTextFromStringLabel(0, 0, 1, -1)

			if IsControlJustReleased(0, 38) and CurrentActionData.accessory ~= nil then

				OpenShopMenu(CurrentActionData.accessory)

				CurrentAction = nil

			end

		end

		if IsControlJustReleased(0, Keys['K']) and GetLastInputMethod(2) and not isDead then

			OpenAccessoryMenu()

		end

	end

end)

