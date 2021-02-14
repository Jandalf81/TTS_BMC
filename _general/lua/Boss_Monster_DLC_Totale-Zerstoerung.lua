function setGUIDs()
	-- DLC 'Bruchlandung'
	deck_Bosses_BL = '51e8ed'
	deck_Rooms_BL = 'c51481'
	deck_Spells_BL = '847fd2'
	deck_EpicHeroes_BL = '9625ec'
	deck_Heroes_BL = 'c6a1d9'

	-- DLC 'Totale Zerstörung'
	deck_Bosses_TZ = 'b5e7b9'
	deck_Items_TZ = 'b9fa8e'

	-- DLC 'Werkzeuge nach Heldenart'
	deck_Rooms_WNH = '7ce798'
	deck_Spells_WNH = 'e72d03'
	deck_Items_WNH = '677dc3'
end


function onLoad(save_state)
	setGUIDs()

	btn_BL = {
		click_function = 'BL',
		function_owner = self,
		label = 'BL',
		tooltip = 'Karten \'Bruchlandung\' auspacken',
		position = {-0.23, -1.25, -0.4},
		rotation = {180, 270, 90},
		width = 180,
		height = 180,
		font_size = 100
	}
	self.createButton(btn_BL)

	btn_TZ = {
		click_function = 'TZ',
		function_owner = self,
		label = 'TZ',
		tooltip = 'Karten \'Totale Zerstörung\' auspacken',
		position = {-0.23, -1.25, 0.0},
		rotation = {180, 270, 90},
		width = 180,
		height = 180,
		font_size = 100
	}
	self.createButton(btn_TZ)

	btn_WNH = {
		click_function = 'WNH',
		function_owner = self,
		label = 'WNH',
		tooltip = 'Karten \'Werkzeuge nach Helden-Art\' auspacken',
		position = {-0.23, -1.25, 0.4},
		rotation = {180, 270, 90},
		width = 180,
		height = 180,
		font_size = 100
	}
	self.createButton(btn_WNH)
end

function BL()
	getZonesFromGlobal()

	params = {
		guid = deck_Bosses_BL,
		position = zone_BossStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = deck_EpicHeroes_BL,
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = deck_Heroes_BL,
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = deck_Rooms_BL,
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = deck_Spells_BL,
		position = zone_SpellStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)
end

function TZ()
	getZonesFromGlobal()

	params = {
		guid = deck_Bosses_TZ,
		position = zone_BossStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = deck_Items_TZ,
		position = zone_ItemStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)
end

function WNH()
	getZonesFromGlobal()

	params = {
		guid = deck_Items_WNH,
		position = zone_ItemStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = deck_Rooms_WNH,
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = deck_Spells_WNH,
		position = zone_SpellStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)
end

function getZonesFromGlobal()
	zone_BossStack = Global.getVar('zone_BossStack')
	zone_RoomStack = Global.getVar('zone_RoomStack')
	zone_SpellStack = Global.getVar('zone_SpellStack')
	zone_HeroStack = Global.getVar('zone_HeroStack')
	zone_EpicHeroStack = Global.getVar('zone_EpicHeroStack')
	zone_ItemStack = Global.GetVar('zone_ItemStack')
end