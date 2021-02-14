function onLoad(save_state)
	btn_2P = {
		click_function = 'MB_2P',
		function_owner = self,
		label = '2P',
		tooltip = 'Karten für 2 Spieler auspacken',
		position = {-0.23, -1.25, -0.4},
		rotation = {180, 270, 90},
		width = 180,
		height = 180,
		font_size = 100
	}
	self.createButton(btn_2P)

	btn_3P = {
		click_function = 'MB_3P',
		function_owner = self,
		label = '3P',
		tooltip = 'Karten für 3 Spieler auspacken',
		position = {-0.23, -1.25, 0.0},
		rotation = {180, 270, 90},
		width = 180,
		height = 180,
		font_size = 100
	}
	self.createButton(btn_3P)

	btn_4P = {
		click_function = 'MB_4P',
		function_owner = self,
		label = '4P',
		tooltip = 'Karten für 4 Spieler auspacken',
		position = {-0.23, -1.25, 0.4},
		rotation = {180, 270, 90},
		width = 180,
		height = 180,
		font_size = 100
	}
	self.createButton(btn_4P)
end

function getZonesFromGlobal()
	zone_BossStack = Global.getVar('zone_BossStack')
	zone_RoomStack = Global.getVar('zone_RoomStack')
	zone_SpellStack = Global.getVar('zone_SpellStack')
	zone_HeroStack = Global.getVar('zone_HeroStack')
	zone_EpicHeroStack = Global.getVar('zone_EpicHeroStack')
end

function putCardsFor2P()
	-- put Boss deck on table
	toNewPos = {
		guid = '4533c7',
		position = zone_BossStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Room deck on table
	toNewPos = {
		guid = '42c776',
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Minibosses deck on table
	toNewPos = {
		guid = 'c57911',
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Spell deck on table
	toNewPos = {
		guid = '710a77',
		position = zone_SpellStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Hero deck *P on table
	toNewPos = {
		guid = '597676',
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck *P on table
	toNewPos = {
		guid = 'd5b1ce',
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Hero deck 2P on table
	toNewPos = {
		guid = '4d96a4',
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck 2P on table
	toNewPos = {
		guid = '17c64a',
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function putCardsFor3P()
	-- put Hero deck 3P on table
	toNewPos = {
		guid = '68b930',
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck 3P on table
	toNewPos = {
		guid = '63166d',
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function putCardsFor4P()
	-- put Hero deck 4P on table
	toNewPos = {
		guid = 'b0cf92',
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck 4P on table
	toNewPos = {
		guid = 'aecae7',
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function MB_2P()
	getZonesFromGlobal()

	putCardsFor2P()
end

function MB_3P()
	getZonesFromGlobal()

	putCardsFor2P()
	putCardsFor3P()
end

function MB_4P()
	getZonesFromGlobal()

	putCardsFor2P()
	putCardsFor3P()
	putCardsFor4P()
end