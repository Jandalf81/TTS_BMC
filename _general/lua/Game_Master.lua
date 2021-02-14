function onLoad(save_state)
	-- Vorderseite
	inp_MaxSouls = {
		input_function = 'inputSouls',
		function_owner = self,
		label = 'Seelen',
		value = Global.getVar('maxSouls'),
		tooltip = 'Für den Sieg notwendige Seelen',
		alignment = 4,
		position = {-0.28, 0.11, -0.55},
		rotation = {0, 0, 0},
		width = 100,
		height = 100,
		font_size = 50,
		validation = 2
	}
	self.createInput(inp_MaxSouls)

	inp_MaxWounds = {
		input_function = 'inputWounds',
		function_owner = self,
		label = 'Wunden',
		value = Global.getVar('maxWounds'),
		tooltip = 'Wunden bis zum Ausscheiden',
		alignment = 4,
		position = {0.18, 0.11, -0.55},
		rotation = {0, 0, 0},
		width = 100,
		height = 100,
		font_size = 50,
		validation = 2
	}
	self.createInput(inp_MaxWounds)

	btn_PlaceDecks = {
		click_function = 'startGame',
		function_owner = Global,
		label = '1 Boss, 5 Räume, 2 Zauber\nausgeben',
		position = {0.0, 0.11, -0.2},
		rotation = {0, 0, 0},
		width = 600,
		height = 100,
		font_size = 50
	}
	self.createButton(btn_PlaceDecks)

	btn_getPlayOrder = {
		click_function = 'getPlayOrder',
		function_owner = Global,
		label = 'Spieler nach Boss-XP\nsortieren',
		position = {0.0, 0.11, 0.5},
		rotation = {0, 0, 0},
		width = 600,
		height = 100,
		font_size = 50
	}
	self.createButton(btn_getPlayOrder)

	-- Rückseite
	btn_nextRound = {
		click_function = 'nextRound',
		function_owner = Global,
		label = 'Helden vorrücken,\nRaumkarten verteilen',
		position = {0.0, -0.01, -0.54},
		rotation = {0, 0, 180},
		width = 600,
		height = 100,
		font_size = 50,
		tooltip = "Rücke die Helden vor"
	}
	self.createButton(btn_nextRound)

	btn_calcLoot = {
		click_function = 'calculateLoot',
		function_owner = Global,
		label = 'Beute der Dungeons\nberechnen',
		position = {0.0, -0.01, 0.15},
		rotation = {0, 0, 180},
		width = 600,
		height = 100,
		font_size = 50
	}
	self.createButton(btn_calcLoot)

	btn_countSoulsAndWounds = {
		click_function = 'countSoulsAndWounds',
		function_owner = Global,
		label = 'Seelen und Wunden\nberechnen',
		position = {0.0, -0.01, 0.85},
		rotation = {0, 0, 180},
		width = 600,
		height = 100,
		font_size = 50
	}
	self.createButton(btn_countSoulsAndWounds)
end

function inputSouls(obj, color, input, stillEditing)
	if (not stillEditing) then
		Global.setVar('maxSouls', input)
		Global.call('countSoulsAndWounds')
	end
end

function inputWounds(obj, color, input, stillEditing)
	if (not stillEditing) then
		Global.setVar('maxWounds', input)
		Global.call('countSoulsAndWounds')
	end
end