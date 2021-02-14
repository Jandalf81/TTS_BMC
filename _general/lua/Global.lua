require("vscode/console")
function onExternalCommand(input)
	-- input contains the string you entered from VS Code
	print('VSCode: ' .. input)
end


maxSouls = 10
maxWounds = 5


function onLoad()
	setGUIDs()
	getObjectsFromGUIDs()
end


--[[ The onUpdate event is called once per frame. --]]
function onUpdate()
	--[[ print('onUpdate loop!') --]]
end


-- define all GUIDs used throughout all the scripts
-- parameters: none
-- return: nil
function setGUIDs()
	-- Town
	zone_ItemStack_GUID = 'd9107e'
	zone_HeroStack_GUID = '6caf98'
	zone_EpicHeroStack_GUID = '25c183'
	zone_SpellStack_GUID = '255d8a'
	zone_RoomStack_GUID = 'fabe13'
	zone_BossStack_GUID = 'b823c9'

	zone_DealtItemsStack_GUID = 'b509e0'

	zones_HeroQueue_GUID = {
		[0] = '7b43a5',
		[1] = '0eb778',
		[2] = 'a2d216',
		[3] = '0a4f81',
		[4] = '908f44',
		[5] = '29890c',
		[6] = '64c1e3',
		[7] = 'e52edb',
		[8] = 'd2dd8b',
		[9] = '9dc534'
	}

	zones_HeroItem_GUID = {
		[0] = '64a6f8',
		[1] = 'd6ec20',
		[2] = '8efc24',
		[3] = '5964df',
		[4] = '55dda1',
		[5] = '3e4607',
		[6] = 'a8ac4e',
		[7] = '666bfd',
		[8] = '9962d8',
		[9] = '620391'
	}

	-- Play Order
	tile_Order_GUID = '0e789b'

	-- Player Dungeons
	tile_PlayerDungeon_GUID = {
		White = '95e385',
		Pink = 'aa95b7',
		Red = '7c809e',
		Green = 'd5e022',
		Purple = '93e0b3',
		Blue = '4eb610'
	}

	zone_PlayerDungeon_GUID = {
		White = '9a1167',
		Pink = '127809',
		Red = '9678b4',
		Green = '4c8766',
		Purple = '8fd378',
		Blue = '7bd8ff'
	}

	zone_PlayerSouls_GUID = {
		White = 'f2051b',
		Pink = '442267',
		Red = '29ba9b',
		Green = 'c68180',
		Purple = 'aa8da7',
		Blue = 'd8ada9'
	}

	zone_PlayerWounds_GUID = {
		White = 'f34208',
		Pink = '4b96ee',
		Red = '3f9238',
		Green = '7b8fa1',
		Purple = '4e76fa',
		Blue = '74e215'
	}
end


-- get objects from all GUIDs
-- parameters: none
-- returns: nil
function getObjectsFromGUIDs()
	-- Town
	zone_ItemStack = getObjectFromGUID(zone_ItemStack_GUID)
	zone_HeroStack = getObjectFromGUID(zone_HeroStack_GUID)
	zone_EpicHeroStack = getObjectFromGUID(zone_EpicHeroStack_GUID)
	zone_SpellStack = getObjectFromGUID(zone_SpellStack_GUID)
	zone_RoomStack = getObjectFromGUID(zone_RoomStack_GUID)
	zone_BossStack = getObjectFromGUID(zone_BossStack_GUID)

	zone_DealtItemsStack = getObjectFromGUID(zone_DealtItemsStack_GUID)

	zones_HeroQueue = {
		[0] = getObjectFromGUID(zones_HeroQueue_GUID[0]),
		[1] = getObjectFromGUID(zones_HeroQueue_GUID[1]),
		[2] = getObjectFromGUID(zones_HeroQueue_GUID[2]),
		[3] = getObjectFromGUID(zones_HeroQueue_GUID[3]),
		[4] = getObjectFromGUID(zones_HeroQueue_GUID[4]),
		[5] = getObjectFromGUID(zones_HeroQueue_GUID[5]),
		[6] = getObjectFromGUID(zones_HeroQueue_GUID[6]),
		[7] = getObjectFromGUID(zones_HeroQueue_GUID[7]),
		[8] = getObjectFromGUID(zones_HeroQueue_GUID[8]),
		[9] = getObjectFromGUID(zones_HeroQueue_GUID[9])
	}

	zones_HeroItem = {
		[0] = getObjectFromGUID(zones_HeroItem_GUID[0]),
		[1] = getObjectFromGUID(zones_HeroItem_GUID[1]),
		[2] = getObjectFromGUID(zones_HeroItem_GUID[2]),
		[3] = getObjectFromGUID(zones_HeroItem_GUID[3]),
		[4] = getObjectFromGUID(zones_HeroItem_GUID[4]),
		[5] = getObjectFromGUID(zones_HeroItem_GUID[5]),
		[6] = getObjectFromGUID(zones_HeroItem_GUID[6]),
		[7] = getObjectFromGUID(zones_HeroItem_GUID[7]),
		[8] = getObjectFromGUID(zones_HeroItem_GUID[8]),
		[9] = getObjectFromGUID(zones_HeroItem_GUID[9])
	}

	-- Play Order
	tile_Order = getObjectFromGUID(tile_Order_GUID)

	-- Player Dungeons
	tile_PlayerDungeon = {
		White = getObjectFromGUID(tile_PlayerDungeon_GUID['White']),
		Pink = getObjectFromGUID(tile_PlayerDungeon_GUID['Pink']),
		Red = getObjectFromGUID(tile_PlayerDungeon_GUID['Red']),
		Green = getObjectFromGUID(tile_PlayerDungeon_GUID['Green']),
		Purple = getObjectFromGUID(tile_PlayerDungeon_GUID['Purple']),
		Blue = getObjectFromGUID(tile_PlayerDungeon_GUID['Blue'])
	}

	zone_PlayerDungeon = {
		White = getObjectFromGUID(zone_PlayerDungeon_GUID['White']),
		Pink = getObjectFromGUID(zone_PlayerDungeon_GUID['Pink']),
		Red = getObjectFromGUID(zone_PlayerDungeon_GUID['Red']),
		Green = getObjectFromGUID(zone_PlayerDungeon_GUID['Green']),
		Purple = getObjectFromGUID(zone_PlayerDungeon_GUID['Purple']),
		Blue = getObjectFromGUID(zone_PlayerDungeon_GUID['Blue'])
	}

	zone_PlayerSouls = {
		White = getObjectFromGUID(zone_PlayerSouls_GUID['White']),
		Pink = getObjectFromGUID(zone_PlayerSouls_GUID['Pink']),
		Red = getObjectFromGUID(zone_PlayerSouls_GUID['Red']),
		Green = getObjectFromGUID(zone_PlayerSouls_GUID['Green']),
		Purple = getObjectFromGUID(zone_PlayerSouls_GUID['Purple']),
		Blue = getObjectFromGUID(zone_PlayerSouls_GUID['Blue'])
	}

	zone_PlayerWounds = {
		White = getObjectFromGUID(zone_PlayerWounds_GUID['White']),
		Pink = getObjectFromGUID(zone_PlayerWounds_GUID['Pink']),
		Red = getObjectFromGUID(zone_PlayerWounds_GUID['Red']),
		Green = getObjectFromGUID(zone_PlayerWounds_GUID['Green']),
		Purple = getObjectFromGUID(zone_PlayerWounds_GUID['Purple']),
		Blue = getObjectFromGUID(zone_PlayerWounds_GUID['Blue'])
	}
end


function nextRound()
	cleanHeroQueue()

	deckRooms = getDeckFromZone(zone_RoomStack)
	deckRooms.dealToAll(1)
end


-- re-order cards in the Hero Queue in Town
-- parameters: none
-- returns: nil
function cleanHeroQueue()
	local emptyStacks = 0

	-- for each scripting zone in zones_HeroQueue...
	for key, zone in pairs(zones_HeroQueue) do
		local deck = getDeckFromZone(zone)

		-- is there a card in the current zone?
		if (deck ~= nil) then
			-- have there been empty spots yet?
			if (emptyStacks > 0) then
				-- move the card from the current zone to the front to fill empty spots
				deck.setPositionSmooth(zones_HeroQueue[key - emptyStacks].getPosition(), false, true)

				-- move item with the hero if there's one
				item = getDeckFromZone(zones_HeroItem[key])
				if (item ~= nil) then
					item.setPositionSmooth(zones_HeroItem[key - emptyStacks].getPosition(), false, true)
				end
			end
		else
			emptyStacks = emptyStacks + 1
		end
	end

	addNewHeroes()
	addNewItems()
end


-- returns the first free zone at the end of the Hero Queue in Town
-- parameters: none
-- returns: zone
function getEndOfHeroQueue()
	local retval = nil

	for key, zone in pairs(zones_HeroQueue) do
		local deck = getDeckFromZone(zone)

		if (deck == nil) then
			return zone
		end
	end

	return nil
end


-- adds new Heroes to the Hero Queue in Town, one for each seated player
-- parameters: none
-- returns: nil
function addNewHeroes()
	local playerList = Player.getPlayers()
	local numberOfActivePlayers = 0

	for i, player in ipairs(playerList) do
		if (player.seated == true and player.color != 'Black') then
			numberOfActivePlayers = numberOfActivePlayers + 1
		end
	end

	-- repeat the function 'addNewHero' for 'numberOfActivePlayers' with a delay of 1 second
	Timer.create({
		identifier = 'timer_addNewHeroes',
		function_name = 'addNewHero',
		delay = 1,
		repetitions = numberOfActivePlayers
	})
end


-- places a new Hero at the current end of the Queue
-- parameters: none
-- returns: nil
function addNewHero()
	local endOfQueue
	local deckToTakeFrom

	endOfQueue = getEndOfHeroQueue()

	-- no free slot at the end of the queue
	if (endOfQueue == nil) then
		Timer.destroy('timer_addNewHeroes')
		return
	end

	if (getDeckFromZone(zone_HeroStack) ~= nil) then
		deckToTakeFrom = getDeckFromZone(zone_HeroStack)
	elseif (getDeckFromZone(zone_EpicHeroStack) ~= nil) then
		deckToTakeFrom = getDeckFromZone(zone_EpicHeroStack)
	end

	-- no deck to take new cards from
	if (deckToTakeFrom == nil) then
		Timer.destroy('timer_addNewHeroes')
		return
	end

	if (deckToTakeFrom.tag == 'Deck') then
		params = {
			position = endOfQueue.getPosition(),
			rotation = {0, 180, 0}
		}
		deckToTakeFrom.takeObject(params)
	end

	if (deckToTakeFrom.tag == 'Card') then
		deckToTakeFrom.setPositionSmooth(endOfQueue.getPosition(), false, false)
		deckToTakeFrom.setRotationSmooth({0, 180, 0}, false, false)
	end
end


-- adds new Items to the store
-- parameters: none
-- returns: nil
function addNewItems()
	local playerList = Player.getPlayers()
	local numberOfActivePlayers = 0
	local repetitions = 0

	for i, player in ipairs(playerList) do
		if (player.seated == true and player.color != 'Black') then
			numberOfActivePlayers = numberOfActivePlayers + 1
		end
	end

	if numberOfActivePlayers  < 4 then
		repetitions = 1
	elseif numberOfActivePlayers == 4 then
		repetitions = 2
	elseif numberOfActivePlayers > 4 then
		repetitions = 3
	end

	-- repeat the function 'addNewItem' for 'repetitions' with a delay of 1 second
	Timer.create({
		identifier = 'timer_addNewItems',
		function_name = 'addNewItem',
		delay = 1,
		repetitions = repetitions
	})
end


-- adds one Item to the store
-- parameters: none
-- returns: nil
function addNewItem()
	deckItems = nil

	deckItems = getDeckFromZone(zone_ItemStack)

	if (deckItems ~= nil) then
		if (deckItems.tag == 'Deck') then
			local params = {
				position = zone_DealtItemsStack.getPosition(),
				rotation = {0, 180, 0}
			}
			deckItems.takeObject(params)
		end

		if (deckItems.tag == 'Card') then
			deckItems.setPositionSmooth(zone_DealtItemsStack.getPosition(), false, false)
			deckItems.setRotationSmooth({0, 180, 0}, false, false)
		end
	else
		Timer.destroy('timer_addNewItems')
		return
	end
end


-- starts the game, shuffles the decks and deals the first cards to the players
-- parameters: none
-- returns: nil
function startGame()
	deckBosses = nil
	deckRooms = nil
	deckSpells = nil
	deckHeroes = nil
	deckEpicHeroes = nil

	-- get Decks from zones
	deckBosses = getDeckFromZone(zone_BossStack)
	deckRooms = getDeckFromZone(zone_RoomStack)
	deckSpells = getDeckFromZone(zone_SpellStack)
	deckHeroes = getDeckFromZone(zone_HeroStack)
	deckEpicHeroes = getDeckFromZone(zone_EpicHeroStack)

	-- check if every zone contains a deck
	if deckBosses == nil then
		broadcastToAll('Die Boss-Karten fehlen!', {r = 1, g = 0, b = 0})
		return
	end
	if deckRooms == nil then
		broadcastToAll('Die Raumkarten fehlen!', {r = 1, g = 0, b = 0})
		return
	end
	if deckSpells == nil then
		broadcastToAll('Die Zauberspruchkarten fehlen!', {r = 1, g = 0, b = 0})
		return
	end
	if deckHeroes == nil then
		broadcastToAll('Die Helden fehlen!', {r = 1, g = 0, b = 0})
		return
	end
	if deckEpicHeroes == nil then
		broadcastToAll('Die Epischen Helden fehlen!', {r = 1, g = 0, b = 0})
		return
	end

	-- shuffle decks
	deckBosses.randomize()
	deckRooms.randomize()
	deckSpells.randomize()
	deckHeroes.randomize()
	deckEpicHeroes.randomize()

	-- deal starting cards to all players
	deckBosses.dealToAll(1)
	deckRooms.dealToAll(5)
	deckSpells.dealToAll(2)
end


-- orders the players by their Boss's XP and prints the order to the UI
-- parameters: none
-- returns: nil
function getPlayOrder()
	local objects = nil

	xpList = {}

	local playerList = Player.getPlayers()
	local playerCount = 0

	for i, player in ipairs(playerList) do
		if (player.seated == true and player.color != 'Black') then
			objects = zone_PlayerDungeon[player.color].getObjects()

			for index, object in ipairs(objects) do
				--broadcastToAll('name: ' .. object.getName() .. ' (' .. object.getVar('xp') .. ' XP)')
				if (object.name == 'Card') then
					if (object.getVar('type') == 'boss') then
						--log('inserting ' .. player.color .. ', ' .. object.getVar('xp'))
						--table.insert(xpList, player.color, object.getVar('xp'))
						xpList[player.color] = object.getVar('xp')
						playerCount = playerCount +1
					end
				end
			end
		end
	end

	local xmlTableScorecard = {
		{
			tag = 'TableLayout',
			attributes = {
				id = 'Scorecard',
				width = '600',
				columnWidths = '0 75 75 50 50 50 50 50',
				autoCalculateHeight = true,
				color = 'rgba(0, 0, 0, 0.7)',
				rectAlignment = 'UpperLeft',
				--pivot = '0.5, 0.5',
				--position = '(0, 0, 0)',
				allowDragging = true,
				restrictDraggingToParentBounds = true,
				returnToOriginalPositionWhenReleased = false,
				interactable = true,
				active = true,
			},
			children = {
				{
					tag = 'Row',
					attributes = {
						preferredHeight = '20'
					},
					children = {
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Text',
									value = 'Spieler',
									attributes = {
										fontSize = 16,
										color = 'White'
									}
								}
							}
						},
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Text',
									value = 'S',
									attributes = {
										fontSize = 16,
										color = 'White'
									}
								}
							}
						},
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Text',
									value = 'W',
									attributes = {
										fontSize = 16,
										color = 'White'
									}
								}
							}
						},
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Image',
									attributes = {
										image = 'loot_items',
										preserveAspect = true
									}
								}
							}
						},
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Image',
									attributes = {
										image = 'loot_relics',
										preserveAspect = true
									}
								}
							}
						},
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Image',
									attributes = {
										image = 'loot_gold',
										preserveAspect = true
									}
								}
							}
						},
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Image',
									attributes = {
										image = 'loot_spellbooks',
										preserveAspect = true
									}
								}
							}
						},
						{
							tag = 'Cell',
							attributes = {},
							children = {
								{
									tag = 'Image',
									attributes = {
										image = 'loot_artifacts',
										preserveAspect = true
									}
								}
							}
						}
					}
				}
			}
		}
	}

	local index = 1
	for color, value in spairs(xpList, function(t, a, b) return t[b] < t[a] end) do
		table.insert(
			xmlTableScorecard[1].children, 
				{tag = 'Row', attributes = {preferredHeight = '20'}, children = 
					{
						{tag = 'Cell', children = 
							{tag = 'Text', value = index .. ': ' .. Player[color].steam_name .. ' (' .. xpList[color] .. ' XP)', attributes = {color = color, alignment = 'MiddleLeft'}}
						},
						{tag = 'Cell', children =  
							{tag = 'Panel', children = {
									{tag = 'ProgressBar', attributes = {id = 'soulsProgress_' .. color, width = 71, height = 16, percentage = 0, showPercentageText = false, fillImageColor = '#00ff00'}},
									{tag = 'Text', value = '0 / 10', attributes = {id = 'souls_' .. color, color = 'white', fontStyle = 'Bold'}}
								}
							}
						},
						{tag = 'Cell', children = 
							{tag = 'Panel', children = {
									{tag = 'ProgressBar', attributes = {id = 'woundsProgress_' .. color, width = 71, height = 16, percentage = 0, showPercentageText = false, fillImageColor = '#ff0000'}},
									{tag = 'Text', value = '0 / 5', attributes = {id = 'wounds_' .. color, color = 'white', fontStyle = 'Bold'}}
								}
							}
						},
						{tag = 'Cell', attributes = {id = 'itemsCell_' .. color, color = 'rgba(0, 0, 0, 0.7)', dontUseTableCellBackground = true}, children = 
							{tag = 'Text', value = 0, attributes = {id = 'items_' .. color, color = 'White'}}
						},
						{tag = 'Cell', attributes = {id = 'relicsCell_' .. color, color = 'rgba(0, 0, 0, 0.7)', dontUseTableCellBackground = true}, children = 
							{tag = 'Text', value = 0, attributes = {id = 'relics_' .. color, color = 'White'}}
						},
						{tag = 'Cell', attributes = {id = 'goldCell_' .. color, color = 'rgba(0, 0, 0, 0.7)', dontUseTableCellBackground = true}, children = 
							{tag = 'Text', value = 0, attributes = {id = 'gold_' .. color, color = 'White'}}
						},
						{tag = 'Cell', attributes = {id = 'spellbooksCell_' .. color, color = 'rgba(0, 0, 0, 0.7)', dontUseTableCellBackground = true}, children = 
							{tag = 'Text', value = 0, attributes = {id = 'spellbooks_' .. color, color = 'White'}}
						},
						{tag = 'Cell', attributes = {id = 'artifactsCell_' .. color, color = 'rgba(0, 0, 0, 0.7)', dontUseTableCellBackground = true}, children = 
							{tag = 'Text', value = 0, attributes = {id = 'artifacts_' .. color, color = 'White'}}
						}
					}
				}
			)

		index = index + 1
	end

	Global.UI.setXmlTable(xmlTableScorecard)
	log(Global.UI.getXmlTable())
end


-- calculates the loot in each player's dungeon and prints it to their playmat
-- parameters: none
-- returns: nil
function calculateLoot()
	playerList = Player.getPlayers()

	tableLoot = {
		relics = {},
		items = {},
		spellbooks = {},
		gold = {},
		artifacts = {}
	}

	tableMax = {
		relics = 0,
		items = 0,
		spellbooks = 0,
		gold = 0,
		artifacts = 0
	}

	tableMaxCount = {
		relics = 0,
		items = 0,
		spellbooks = 0,
		gold = 0,
		artifacts = 0
	}

	--log(tableLoot)

	for i, player in ipairs(playerList) do
		if (player.seated == true and player.color != 'Black') then
			log(player.steam_name .. ' (' .. player.color .. ')')
			tile_PlayerDungeon[player.color].call('calculateLoot')

			table.insert(tableLoot.relics, {Color = player.color, Score = tile_PlayerDungeon[player.color].getVar('relics')})
			table.insert(tableLoot.items, {Color = player.color, Score = tile_PlayerDungeon[player.color].getVar('items')})
			table.insert(tableLoot.spellbooks, {Color = player.color, Score = tile_PlayerDungeon[player.color].getVar('spellbooks')})
			table.insert(tableLoot.gold, {Color = player.color, Score = tile_PlayerDungeon[player.color].getVar('gold')})
			table.insert(tableLoot.artifacts, {Color = player.color, Score = tile_PlayerDungeon[player.color].getVar('artifacts')})
		end
	end

	-- compare loot of all players
	for loot, table in pairs(tableLoot) do
		-- get max score for current loot
		maxScore = 0
		for j, player in ipairs(table) do
			--log('Loot: ' .. loot .. ', Player: ' .. player.Color .. ', Score: '.. player.Score)
			if (player.Score > maxScore) then maxScore = player.Score end
		end
		tableMax[loot] = maxScore

		-- count players with ties for max score
		for j, player in ipairs(table) do
			if (player.Score == maxScore) then tableMaxCount[loot] = tableMaxCount[loot] + 1 end
		end
	end

	for i, player in ipairs(playerList) do
		if (player.seated == true and player.color != 'Black') then
			tableResult = {
				relics = '',
				items = '',
				spellbooks = '',
				gold = '',
				artifacts = ''
			}

			-- prepare result for each player
			for loot, result in pairs(tableResult) do
				-- loot is greater than zero but less than max
				if (tile_PlayerDungeon[player.color].getVar(loot) > 0 and tile_PlayerDungeon[player.color].getVar(loot) < tableMax[loot]) then
					tableResult[loot] = 'lost'
				end
				-- loot is equal to max and only one player has max
				if (tile_PlayerDungeon[player.color].getVar(loot) == tableMax[loot] and tableMaxCount[loot] == 1) then
					tableResult[loot] = 'lead'
				end
				-- loot is equal to max but multiple players have max
				if (tile_PlayerDungeon[player.color].getVar(loot) == tableMax[loot] and tableMax[loot] > 0 and tableMaxCount[loot] > 1) then
					tableResult[loot] = 'tied'
				end
				-- loot is zero
				if (tile_PlayerDungeon[player.color].getVar(loot) == 0) then
					tableResult[loot] = 'zero'
				end
			end

			-- send result to player
			tile_PlayerDungeon[player.color].call('refreshLootLabels', tableResult)
		end
	end
end


-- calculates all player's collected souls and wounds and prints it to their playmat
-- parameters: none
-- returns: nil
function countSoulsAndWounds()
	playerList = Player.getPlayers()

	for i, player in ipairs(playerList) do
		if (player.seated == true and player.color ~= 'Black') then
			tile_PlayerDungeon[player.color].call('countSoulsAndWounds')
		end
	end
end


-- returns all table  content in a sorted order
-- parameters: tableToSort, orderFunction
-- returns: sortedTable
-- https://stackoverflow.com/questions/15706270/sort-a-table-in-lua
function spairs(t, order)
	-- collect the keys
	local keys = {}
	for k in pairs(t) do keys[#keys+1] = k end

	-- if order function given, sort by it by passing the table and keys a, b,
	-- otherwise just sort the keys
	if order then
		table.sort(keys, function(a,b) return order(t, a, b) end)
	else
		table.sort(keys)
	end

	-- return the iterator function
	local i = 0
	return function()
		i = i + 1
		if keys[i] then
			return keys[i], t[keys[i]]
		end
	end
end


-- returns the first card or deck in a zone
-- parameters: zone
-- returns: card or deck
function getDeckFromZone(zone)
	--deck = nil
	--retval = nil

	local objects = zone.getObjects()
	for i, deck in ipairs(objects) do
		if (deck.tag == 'Deck' or deck.tag == 'Card') then
			return getObjectFromGUID(deck.getGUID())
		end
	end

	return nil
end


-- returns the value of a LUA variable of a non-existent object
-- parameters: params table {script, var}
-- returns: value
function getLuaVarFromScript(params)
	local retval = nil
	local pattern = params.var .. ' = (.-)\n'

	retval = string.match(params.script, pattern)

	if (retval == nil) then
		return 0
	else
		return retval
	end
end


function moveDeck(deck, toZone)
	log('moveDeck(): ' .. deck.getGUID() .. ' / ' .. toZone.getGUID())
	deck.setPositionSmooth(toZone.getPosition(), true, true)
end