function setGUIDs()
	-- generic decks
	deck_Bosses = '4533c7'
	deck_Rooms = '42c776'
	deck_Rooms_Minibosses = 'c57911'
	deck_Spells = '710a77'

	--decks for 2 players
	deck_Heroes_xP = '597676'
	deck_EpicHeroes_xP = 'd5b1ce'
	deck_Heroes_2P = '4d96a4'
	deck_EpicHeroes_2P = '17c64a'

	-- decks for 3 players
	deck_Heroes_3P = '68b930'
	deck_EpicHeroes_3P = '63166d'

	-- decks for 4 players
	deck_Heroes_4P = 'b0cf92'
	deck_EpicHeroes_4P = 'aecae7'
end


function onLoad(save_state)
	setGUIDs()

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
		guid = deck_Bosses,
		position = zone_BossStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Room deck on table
	toNewPos = {
		guid = deck_Rooms,
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Minibosses deck on table
	toNewPos = {
		guid = deck_Rooms_Minibosses,
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Spell deck on table
	toNewPos = {
		guid = deck_Spells,
		position = zone_SpellStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Hero deck *P on table
	toNewPos = {
		guid = deck_Heroes_xP,
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck *P on table
	toNewPos = {
		guid = deck_EpicHeroes_xP,
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Hero deck 2P on table
	toNewPos = {
		guid = 	deck_Heroes_2P,
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck 2P on table
	toNewPos = {
		guid = deck_EpicHeroes_2P,
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function putCardsFor3P()
	-- put Hero deck 3P on table
	toNewPos = {
		guid = deck_Heroes_3P,
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck 3P on table
	toNewPos = {
		guid = deck_EpicHeroes_3P,
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function putCardsFor4P()
	-- put Hero deck 4P on table
	toNewPos = {
		guid = deck_Heroes_4P,
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck 4P on table
	toNewPos = {
		guid = deck_EpicHeroes_4P,
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