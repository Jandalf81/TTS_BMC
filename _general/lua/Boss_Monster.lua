function onLoad(save_state)
	btn_2P = {
		click_function = 'BossMonster_2P',
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
		click_function = 'BossMonster_3P',
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
		click_function = 'BossMonster_4P',
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

function BossMonster_2P()
	getZonesFromGlobal()

	putCardsFor2P()
end

function BossMonster_3P()
	getZonesFromGlobal()

	putCardsFor2P()
	putCardsFor3P()
end

function BossMonster_4P()
	getZonesFromGlobal()

	putCardsFor2P()
	putCardsFor3P()
	putCardsFor4P()
end

function putCardsFor2P()
	-- put Boss deck on table
	toNewPos = {
		position = zone_BossStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Room deck on table
	toNewPos = {
		position = zone_RoomStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Spell deck on table
	toNewPos = {
		position = zone_SpellStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Hero deck 2P on table
	toNewPos = {
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- put Epic Hero deck 2P on table
	toNewPos = {
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function putCardsFor3P()
	-- add Hero deck 3P
	toNewPos = {
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- add Epic Hero deck 3P
	toNewPos = {
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function putCardsFor4P()
	-- add Hero deck 4P
	toNewPos = {
		position = zone_HeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)

	-- add Epic Hero deck 4P
	toNewPos = {
		position = zone_EpicHeroStack.getPosition(),
		rotation = {0.0, 180.0, 180.0}
	}
	self.takeObject(toNewPos)
end

function getZonesFromGlobal()
	zone_BossStack = Global.getVar('zone_BossStack')
	zone_RoomStack = Global.getVar('zone_RoomStack')
	zone_SpellStack = Global.getVar('zone_SpellStack')
	zone_HeroStack = Global.getVar('zone_HeroStack')
	zone_EpicHeroStack = Global.getVar('zone_EpicHeroStack')
end