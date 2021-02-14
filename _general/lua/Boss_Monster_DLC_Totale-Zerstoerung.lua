function onLoad(save_state)
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
		guid = '51e8ed',
		position = zone_BossStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = '9625ec',
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = 'c6a1d9',
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = 'c51481',
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = '847fd2',
		position = zone_SpellStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)
end

function TZ()
	getZonesFromGlobal()

	params = {
		guid = 'b5e7b9',
		position = zone_BossStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = 'b9fa8e',
		position = zone_ItemStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)
end

function WNH()
	getZonesFromGlobal()

	params = {
		guid = '677dc3',
		position = zone_ItemStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = '7ce798',
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(params)

	params = {
		guid = 'e72d03',
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