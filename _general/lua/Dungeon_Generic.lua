playerSouls = 0
playerWounds = 0

relics = 0
items = 0
spellbooks = 0
gold = 0
artifacts = 0

function onLoad(save_state)
	-- Labels for Souls and Wounds
	lbl_playerSouls = {
		index = 0,
		click_function = 'none',
		function_owner = self,
		label = playerSouls .. ' / ' .. Global.getVar('maxSouls'),
		position = {x = 6, y = 0.07, z = -1.71},
		rotation = {0, 0, 0},
		width = 0,
		height = 0,
		font_size = 200
	}
	self.createButton(lbl_playerSouls)

	lbl_playerWounds = {
		index = 1,
		click_function = 'none',
		function_owner = self,
		label = playerWounds .. ' / ' .. Global.getVar('maxWounds'),
		position = {x = 6.00, y = 0.07, z = -1.2},
		rotation = {0, 0, 0},
		width = 0,
		height = 0,
		font_size = 200
	}
	self.createButton(lbl_playerWounds)

	lbl_playerItems = {
		index = 2,
		click_function = 'none',
		function_owner = self,
		label = items,
		position = {x = -5.23, y = 0.07, z = -1.71},
		rotation = {0, 0, 0},
		width = 0,
		height = 0,
		font_size = 200
	}
	self.createButton(lbl_playerItems)

	lbl_playerGold = {
		index = 3,
		click_function = 'none',
		function_owner = self,
		label = gold,
		position = {x = -5.23, y = 0.07, z = -1.2},
		rotation = {0, 0, 0},
		width = 0,
		height = 0,
		font_size = 200
	}
	self.createButton(lbl_playerGold)

	lbl_playerRelics = {
		index = 4,
		click_function = 'none',
		function_owner = self,
		label = gold,
		position = {x = -4.23, y = 0.07, z = -1.71},
		rotation = {0, 0, 0},
		width = 0,
		height = 0,
		font_size = 200
	}
	self.createButton(lbl_playerRelics)

	lbl_playerSpellbooks = {
		index = 5,
		click_function = 'none',
		function_owner = self,
		label = spellbooks,
		position = {x = -4.23, y = 0.07, z = -1.2},
		rotation = {0, 0, 0},
		width = 0,
		height = 0,
		font_size = 200
	}
	self.createButton(lbl_playerSpellbooks)

	lbl_playerArtifacts = {
		index = 6,
		click_function = 'none',
		function_owner = self,
		label = artifacts,
		position = {x = -3.23, y = 0.07, z = -1.2},
		rotation = {0, 0, 0},
		width = 0,
		height = 0,
		font_size = 200
	}
	self.createButton(lbl_playerArtifacts)
end

function calculateLoot()
	relics = 0
	items = 0
	spellbooks = 0
	gold = 0
	artifacts = 0

	zones = Global.getTable('zone_PlayerDungeon')
	zone = zones[self.getColorTint():toString()]

	local objects = zone.getObjects()

	for index, object in ipairs(objects) do
		-- all single active cards
		if (object.name == 'Card' and object.is_face_down == false) then
			relics = relics + object.getVar('relics')
			items = items + object.getVar('items')
			spellbooks = spellbooks + object.getVar('spellbooks')
			gold = gold + object.getVar('gold')
			artifacts = artifacts + object.getVar('artifacts')
		end

		-- stacks
		if (object.name == 'Deck' and object.is_face_down == false) then
			deck = object.getObjects()
			topCard = deck[#deck]

			-- cards in a stack do not exist as objects, so we get their values directly from the script
			relics = relics + Global.call('getLuaVarFromScript', {script = topCard.lua_script, var = 'relics'})
			items = items + Global.call('getLuaVarFromScript', {script = topCard.lua_script, var = 'items'})
			spellbooks = spellbooks + Global.call('getLuaVarFromScript', {script = topCard.lua_script, var = 'spellbooks'})
			gold = gold + Global.call('getLuaVarFromScript', {script = topCard.lua_script, var = 'gold'})
			artifacts = artifacts + Global.call('getLuaVarFromScript', {script = topCard.lua_script, var = 'artifacts'})
		end
	end
end

function refreshLootLabels(tableResult)
	if (tableResult.relics == 'lead') then 
		newColorRelics = 'Red'
		newColorRelicsCell = 'rgba(1, 0, 0, 0.7)'
	elseif (tableResult.relics == 'tied') then 
		newColorRelics = 'Yellow'
		newColorRelicsCell = 'rgba(1, 1, 0, 0.7)'
	elseif (tableResult.relics == 'lost') then 
		newColorRelics = 'Green'
		newColorRelicsCell = 'rgba(0, 1, 0, 0.7)'
	elseif (tableResult.relics == 'zero') then 
		newColorRelics = 'Black'
		newColorRelicsCell = 'rgba(0, 0, 0, 0.7)'
	end

	if (tableResult.items == 'lead') then 
		newColorItems = 'Red'
		newColorItemsCell = 'rgba(1, 0, 0, 0.7)'
	elseif (tableResult.items == 'tied') then 
		newColorItems = 'Yellow'
		newColorItemsCell = 'rgba(1, 1, 0, 0.7)'
	elseif (tableResult.items == 'lost') then 
		newColorItems = 'Green'
		newColorItemsCell = 'rgba(0, 1, 0, 0.7)'
	elseif (tableResult.items == 'zero') then 
		newColorItems = 'Black'
		newColorItemsCell = 'rgba(0, 0, 0, 0.7)'
	end

	if (tableResult.spellbooks == 'lead') then 
		newColorSpellbooks = 'Red'
		newColorSpellbooksCell = 'rgba(1, 0, 0, 0.7)'
	elseif (tableResult.spellbooks == 'tied') then 
		newColorSpellbooks = 'Yellow'
		newColorSpellbooksCell = 'rgba(1, 1, 0, 0.7)'
	elseif (tableResult.spellbooks == 'lost') then 
		newColorSpellbooks = 'Green'
		newColorSpellbooksCell = 'rgba(0, 1, 0, 0.7)'
	elseif (tableResult.spellbooks == 'zero') then 
		newColorSpellbooks = 'Black'
		newColorSpellbooksCell = 'rgba(0, 0, 0, 0.7)'
	end

	if (tableResult.gold == 'lead') then 
		newColorGold = 'Red'
		newColorGoldCell = 'rgba(1, 0, 0, 0.7)'
	elseif (tableResult.gold == 'tied') then 
		newColorGold = 'Yellow'
		newColorGoldCell = 'rgba(1, 1, 0, 0.7)'
	elseif (tableResult.gold == 'lost') then 
		newColorGold = 'Green'
		newColorGoldCell = 'rgba(0, 1, 0, 0.7)'
	elseif (tableResult.gold == 'zero') then 
		newColorGold = 'Black'
		newColorGoldCell = 'rgba(0, 0, 0, 0.7)'
	end

	if (tableResult.artifacts == 'lead') then 
		newColorArtifacts = 'Red'
		newColorArtifactsCell = 'rgba(1, 0, 0, 0.7)'
	elseif (tableResult.artifacts == 'tied') then 
		newColorArtifacts = 'Yellow'
		newColorArtifactsCell = 'rgba(1, 1, 0, 0.7)'
	elseif (tableResult.artifacts == 'lost') then 
		newColorArtifacts = 'Green'
		newColorArtifactsCell = 'rgba(0, 1, 0, 0.7)'
	elseif (tableResult.artifacts == 'zero') then 
		newColorArtifacts = 'Black'
		newColorArtifactsCell = 'rgba(0, 0, 0, 0.7)'
	end

	lbl_playerRelics.font_color = newColorRelics
	lbl_playerRelics.label = relics
	self.editButton(lbl_playerRelics)
	Global.UI.setAttribute('relicsCell_' ..self.getColorTint():toString(), 'color', newColorRelicsCell)
	Global.UI.setValue('relics_' ..self.getColorTint():toString(), relics)

	lbl_playerItems.font_color = newColorItems
	lbl_playerItems.label = items
	self.editButton(lbl_playerItems)
	Global.UI.setAttribute('itemsCell_' ..self.getColorTint():toString(), 'color', newColorItemsCell)
	Global.UI.setValue('items_' ..self.getColorTint():toString(), items)

	lbl_playerSpellbooks.font_color = newColorSpellbooks
	lbl_playerSpellbooks.label = spellbooks
	self.editButton(lbl_playerSpellbooks)
	Global.UI.setAttribute('spellbooksCell_' ..self.getColorTint():toString(), 'color', newColorSpellbooksCell)
	Global.UI.setValue('spellbooks_' ..self.getColorTint():toString(), spellbooks)

	lbl_playerGold.font_color = newColorGold
	lbl_playerGold.label = gold
	self.editButton(lbl_playerGold)
	Global.UI.setAttribute('goldCell_' ..self.getColorTint():toString(), 'color', newColorGoldCell)
	Global.UI.setValue('gold_' ..self.getColorTint():toString(), gold)

	lbl_playerArtifacts.font_color = newColorArtifacts
	lbl_playerArtifacts.label = artifacts
	self.editButton(lbl_playerArtifacts)
	Global.UI.setAttribute('artifactsCell_' ..self.getColorTint():toString(), 'color', newColorArtifactsCell)
	Global.UI.setValue('artifacts_' ..self.getColorTint():toString(), artifacts)

	log(Global.UI.getXmlTable())
end

function countSoulsAndWounds(zone_PlayerSouls)
	zones_PlayerSouls = Global.getTable('zone_PlayerSouls')
	zone_PlayerSouls = zones_PlayerSouls[self.getColorTint():toString()]

	zones_PlayerWounds = Global.getTable('zone_PlayerWounds')
	zone_PlayerWounds = zones_PlayerWounds[self.getColorTint():toString()]

	-- re-count all souls in zone
	playerSouls = 0

	local objects = zone_PlayerSouls.getObjects()

	for index, object in ipairs(objects) do
		if (object.name == 'Card') then
			playerSouls = playerSouls + object.getVar('souls')
		end

		if (object.name == 'Deck') then
			deck = object.getObjects()

			for _, card in ipairs(deck) do
				playerSouls = playerSouls + Global.call('getLuaVarFromScript', {script = card.lua_script, var = 'souls'})
			end
		end
	end

	-- re-count all wounds in zone
	playerWounds = 0

	local objects = zone_PlayerWounds.getObjects()

	for index, object in ipairs(objects) do
		if (object.name == 'Card') then
			playerWounds = playerWounds + object.getVar('wounds')
		end

		if (object.name == 'Deck') then
			deck = object.getObjects()

			for _, card in ipairs(deck) do
				playerWounds = playerWounds + Global.call('getLuaVarFromScript', {script = card.lua_script, var = 'wounds'})
			end
		end
	end

	if (playerSouls >= tonumber(Global.getVar('maxSouls'))) then 
		lbl_playerSouls.font_color = 'Green' 
	end
	lbl_playerSouls.label = playerSouls .. ' / ' .. Global.getVar('maxSouls')
	self.editButton(lbl_playerSouls)

	Global.UI.setValue('souls_' ..self.getColorTint():toString(), playerSouls .. ' / ' .. Global.getVar('maxSouls'))
	Global.UI.setAttribute('soulsProgress_' ..self.getColorTint():toString(), 'percentage', (100 * playerSouls / Global.getVar('maxSouls')))
	

	if (playerWounds >= tonumber(Global.getVar('maxWounds'))) then 
		lbl_playerWounds.font_color = 'Red'
	end
	lbl_playerWounds.label = playerWounds .. ' / ' .. Global.getVar('maxWounds')
	self.editButton(lbl_playerWounds)

	Global.UI.setValue('wounds_' ..self.getColorTint():toString(), playerWounds .. ' / ' .. Global.getVar('maxWounds'))
	Global.UI.setAttribute('woundsProgress_' ..self.getColorTint():toString(), 'percentage', (100 * playerWounds / Global.getVar('maxWounds')))
end