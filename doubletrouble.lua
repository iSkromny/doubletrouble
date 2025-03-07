--- template DoubleTrouble
--- author: iSkromny
--- 
--- 
function getDiplomacyRelations(races)
return {
    {
        raceA = races[1],
        raceB = races[3],
        relation = 100,
        alliance = true,
        permanentAlliance = true,
    },
    {
        raceA = races[2],
        raceB = races[4],
        relation = 100,
        alliance = true,
        permanentAlliance = true,
    },
    {
        raceA = races[1],
        raceB = races[2],
        relation = 0,
        alwaysAtWar  = true,
    },
    {
        raceA = races[1],
        raceB = races[4],
        relation = 0,
        alwaysAtWar  = true,
    },
    {
        raceA = races[2],
        raceB = races[3],
        relation = 0,
        alwaysAtWar  = true,
    },
    {
        raceA = races[3],
        raceB = races[4],
        relation = 0,
        alwaysAtWar  = true,
    },
}
end
function SubraceSquad(x)
    local subrace = {}
    if x == 1 then
        subrace = {Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralWolf, Subrace.NeutralHuman, Subrace.NeutralBarbarian, Subrace.NeutralWater}
    elseif x == 2 then
        subrace = {Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralWolf, Subrace.NeutralHuman, Subrace.NeutralBarbarian, Subrace.NeutralMarsh, Subrace.NeutralElf}
    elseif x == 3 then
        subrace = {Subrace.Elf, Subrace.Dwarf, Subrace.Undead, Subrace.Heretic, Subrace.Human, Subrace.NeutralMarsh, Subrace.NeutralGreenSkin, Subrace.NeutralWolf,
                    Subrace.Neutral, Subrace.NeutralBarbarian, Subrace.NeutralWater}
    elseif x == 4 then
        subrace = {Subrace.Elf, Subrace.Dwarf, Subrace.Undead, Subrace.Heretic, Subrace.Human, Subrace.NeutralMarsh, Subrace.NeutralGreenSkin, Subrace.NeutralWolf, 
                    Subrace.Neutral, Subrace.NeutralBarbarian, Subrace.NeutralWater, Subrace.NeutralHuman, Subrace.NeutralElf}
    elseif x == GO then
        subrace = {Subrace.NeutralDragon, Subrace.Human, Subrace.Dwarf, Subrace.Heretic, Subrace.Undead, Subrace.Elf}
    end
    return subrace
end

function SubraceRND(x)
    local subrace = {}
    if x == 1 then
        subrace = {Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralWolf, Subrace.NeutralHuman, Subrace.NeutralBarbarian, Subrace.NeutralWater}
    elseif x == 2 then
        subrace = {Subrace.Neutral, Subrace.NeutralGreenSkin, Subrace.NeutralWolf, Subrace.NeutralHuman, Subrace.NeutralBarbarian, Subrace.NeutralMarsh, Subrace.NeutralElf}
    elseif x == 3 then
        subrace = {Subrace.Elf, Subrace.Dwarf, Subrace.Undead, Subrace.Heretic, Subrace.Human, Subrace.NeutralMarsh, Subrace.NeutralGreenSkin, Subrace.NeutralWolf,
                    Subrace.Neutral, Subrace.NeutralBarbarian, Subrace.NeutralWater}
    elseif x == 4 then
        subrace = {Subrace.Elf, Subrace.Dwarf, Subrace.Undead, Subrace.Heretic, Subrace.Human, Subrace.NeutralMarsh, Subrace.NeutralGreenSkin, Subrace.NeutralWolf, 
                    Subrace.Neutral, Subrace.NeutralBarbarian, Subrace.NeutralWater, Subrace.NeutralHuman, Subrace.NeutralElf}
    elseif x == GO then
        subrace = {Subrace.NeutralDragon, Subrace.Human, Subrace.Dwarf, Subrace.Heretic, Subrace.Undead, Subrace.Elf}
    end
    return subrace
end

function getNativeSubraces(race)
    if race == Race.Human then
        return { Subrace.Human }
    end
    if race == Race.Dwarf then
        return { Subrace.Dwarf }
    end
    if race == Race.Heretic then
        return { Subrace.Heretic }
    end
    if race == Race.Undead then
        return { Subrace.Undead }
    end
    if race == Race.Elf then
        return { Subrace.Elf }
    end
    return { Subrace.Neutral }
end

function getPlayerZoneMines(race, raceX)
    local mines = {gold = 2,}
    if race == Race.Human and raceX == Race.Elf then
        mines.lifeMana = 2
        mines.groveMana = 1
        
    elseif race == Race.Elf and raceX == Race.Human then
        mines.groveMana = 2
        mines.lifeMana = 1
        
    elseif race == Race.Human and raceX == Race.Dwarf then
        mines.lifeMana = 2
        mines.runicMana = 1
        
    elseif race == Race.Dwarf and raceX == Race.Human then
        mines.runicMana = 2
        mines.lifeMana = 1
        
    elseif race == Race.Human and raceX == Race.Heretic then
        mines.lifeMana = 2
        mines.infernalMana = 1
        
    elseif race == Race.Heretic and raceX == Race.Human then
        mines.infernalMana = 2
        mines.lifeMana = 1
        
    elseif race == Race.Human and raceX == Race.Undead then
        mines.lifeMana = 2
        mines.deathMana = 1
        
    elseif race == Race.Undead and raceX == Race.Human then
        mines.deathMana = 2
        mines.lifeMana = 1
        
    elseif race == Race.Elf and raceX == Race.Undead then
        mines.groveMana = 2
        mines.deathMana = 1
        
    elseif race == Race.Undead and raceX == Race.Elf then
        mines.deathMana = 2
        mines.groveMana = 1
        
    elseif race == Race.Elf and raceX == Race.Dwarf then
        mines.groveMana = 2
        mines.runicMana = 1
        
    elseif race == Race.Dwarf and raceX == Race.Elf then
        mines.runicMana = 2
        mines.groveMana = 1
        
    elseif race == Race.Elf and raceX == Race.Heretic then
        mines.groveMana = 2
        mines.infernalMana = 1
        
    elseif race == Race.Heretic and raceX == Race.Elf then
        mines.infernalMana = 2
        mines.groveMana = 1
        
    elseif race == Race.Dwarf and raceX == Race.Heretic then
        mines.runicMana = 2
        mines.infernalMana = 1
        
    elseif race == Race.Heretic and raceX == Race.Dwarf then
        mines.infernalMana = 2
        mines.runicMana = 1
        
    elseif race == Race.Dwarf and raceX == Race.Undead then
        mines.runicMana = 2
        mines.deathMana = 1
        
    elseif race == Race.Undead and raceX == Race.Dwarf then
        mines.deathMana = 2
        mines.runicMana = 1
        
    elseif race == Race.Heretic and raceX == Race.Undead then
        mines.infernalMana = 2
        mines.deathMana = 1
        
    elseif race == Race.Undead and raceX == Race.Heretic then
        mines.deathMana = 2
        mines.infernalMana = 1
        
    end
    return mines
end

function getMinesZoneP(race, raceX)
    local resourceflag = math.random(0, 2)
    local mines = {
        gold = 1,
    }
	if race == Race.Human and raceX == Race.Elf then
		mines.lifeMana = 1
        if resourceflag == 0 then
            mines.deathMana = 1
            mines.runicMana = 1
        elseif resourceflag == 1 then
            mines.runicMana = 1
            mines.infernalMana = 1
        elseif resourceflag == 2 then
            mines.infernalMana = 1
            mines.deathMana = 1
        end
	elseif race == Race.Elf and raceX == Race.Human then
        mines.groveMana = 1
        if resourceflag == 0 then
            mines.deathMana = 1
            mines.infernalMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.runicMana = 1
        elseif resourceflag == 2 then
            mines.infernalMana = 1
            mines.runicMana = 1
        end
    elseif race == Race.Human and raceX == Race.Dwarf then
        mines.lifeMana = 1
        if resourceflag == 0 then
            mines.deathMana = 1
            mines.groveMana = 1
        elseif resourceflag == 1 then
            mines.infernalMana = 1
            mines.groveMana = 1
        elseif resourceflag == 2 then
            mines.infernalMana = 1
            mines.deathMana = 1
        end
    elseif race == Race.Dwarf and raceX == Race.Human then
        mines.runicMana = 1
        if resourceflag == 0 then
            mines.deathMana = 1
            mines.infernalMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.groveMana = 1
        elseif resourceflag == 2 then
            mines.infernalMana = 1
            mines.groveMana = 1
        end
    elseif race == Race.Human and raceX == Race.Heretic then
        mines.lifeMana = 1
        if resourceflag == 0 then
            mines.deathMana = 1
            mines.groveMana = 1
        elseif resourceflag == 1 then
            mines.runicMana = 1
            mines.groveMana = 1
        elseif resourceflag == 2 then
            mines.groveMana = 1
            mines.deathMana = 1
        end
    elseif race == Race.Heretic and raceX == Race.Human then
        mines.infernalMana = 1
        if resourceflag == 0 then
            mines.runicMana = 1
            mines.groveMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.groveMana = 1
        elseif resourceflag == 2 then
            mines.runicMana = 1
            mines.deathMana = 1
        end
    elseif race == Race.Human and raceX == Race.Undead then
        mines.lifeMana = 1
        if resourceflag == 0 then
            mines.runicMana = 1
            mines.groveMana = 1
        elseif resourceflag == 1 then
            mines.runicMana = 1
            mines.groveMana = 1
        elseif resourceflag == 2 then
            mines.runicMana = 1
            mines.infernalMana = 1
        end
    elseif race == Race.Undead and raceX == Race.Human then
        mines.deathMana = 1
        if resourceflag == 0 then
            mines.infernalMana = 1
            mines.groveMana = 1
        elseif resourceflag == 1 then
            mines.infernalMana = 1
            mines.runicMana = 1
        elseif resourceflag == 2 then
            mines.groveMana = 1
            mines.infernalMana = 1
        end
    elseif race == Race.Elf and raceX == Race.Undead then
        mines.groveMana = 1
        if resourceflag == 0 then
            mines.infernalMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.runicMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 2 then
            mines.runicMana = 1
            mines.infernalMana = 1
        end
    elseif race == Race.Undead and raceX == Race.Elf then
        mines.deathMana = 1
        if resourceflag == 0 then
            mines.runicMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.runicMana = 1
            mines.infernalMana = 1
        elseif resourceflag == 2 then
            mines.lifeMana = 1
            mines.infernalMana = 1
        end
    elseif race == Race.Elf and raceX == Race.Dwarf then
        mines.groveMana = 1
        if resourceflag == 0 then
            mines.infernalMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 2 then
            mines.deathMana = 1
            mines.infernalMana = 1
        end
    elseif race == Race.Dwarf and raceX == Race.Elf then
        mines.runicMana = 1
        if resourceflag == 0 then
            mines.infernalMana = 1
            mines.deathMana = 1
        elseif resourceflag == 1 then
            mines.infernalMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 2 then
            mines.deathMana = 1
            mines.lifeMana = 1
        end
    elseif race == Race.Elf and raceX == Race.Heretic then
        mines.groveMana = 1
        if resourceflag == 0 then
            mines.runicMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 2 then
            mines.deathMana = 1
            mines.runicMana = 1
        end
    elseif race == Race.Heretic and raceX == Race.Elf then
        mines.infernalMana = 1
        if resourceflag == 0 then
            mines.deathMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.runicMana = 1
        elseif resourceflag == 2 then
            mines.lifeMana = 1
            mines.runicMana = 1
        end
    elseif race == Race.Dwarf and raceX == Race.Heretic then
        mines.runicMana = 1
        if resourceflag == 0 then
            mines.groveMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 2 then
            mines.deathMana = 1
            mines.groveMana = 1
        end
    elseif race == Race.Heretic and raceX == Race.Dwarf then
        mines.infernalMana = 1
        if resourceflag == 0 then
            mines.deathMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.deathMana = 1
            mines.groveMana = 1
        elseif resourceflag == 2 then
            mines.groveMana = 1
            mines.lifeMana = 1
        end
    elseif race == Race.Dwarf and raceX == Race.Undead then
        mines.runicMana = 1
        if resourceflag == 0 then
            mines.groveMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.infernalMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 2 then
            mines.infernalMana = 1
            mines.groveMana = 1
        end
    elseif race == Race.Undead and raceX == Race.Dwarf then
        mines.deathMana = 1
        if resourceflag == 0 then
            mines.infernalMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.groveMana = 1
            mines.infernalMana = 1
        elseif resourceflag == 2 then
            mines.infernalMana = 1
            mines.lifeMana = 1
        end
    elseif race == Race.Heretic and raceX == Race.Undead then
        mines.infernalMana = 1
        if resourceflag == 0 then
            mines.groveMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 1 then
            mines.runicMana = 1
            mines.lifeMana = 1
        elseif resourceflag == 2 then
            mines.runicMana = 1
            mines.groveMana = 1
        end
    elseif race == Race.Undead and raceX == Race.Heretic then
        mines.deathMana = 1
        if resourceflag == 0 then
            mines.runicMana = 1
            mines.groveMana = 1
        elseif resourceflag == 1 then
            mines.lifeMana = 1
            mines.groveMana = 1
        elseif resourceflag == 2 then
            mines.lifeMana = 1
            mines.runicMana = 1
        end
    end
    return mines
end

function getLRMines()
    local mines = { }
    mines.gold = 1
    mines.infernalMana = 1
    mines.lifeMana = 1
    mines.groveMana = 1
    mines.runicMana = 1
    mines.deathMana = 1
    return mines
end

function getCenterMines()
    local mines = { }
    mines.gold = 2
    mines.infernalMana = 1
    mines.lifeMana = 1
    mines.groveMana = 1
    mines.runicMana = 1
    mines.deathMana = 1
    return mines
end

function ili(x, y)
    local random = math.random(0,1)
    if random == 0 then
        return x
    elseif random == 1 then
        return y
    end
end

function wtf(x, y, z)
    local random = math.random(0,2)
    if random == 0 then
        return x
    elseif random == 1 then
        return y
    elseif random == 2 then
        return z
    end
end

function rand(...)
    return (select(math.random(select('#', ...)), ...))
end

math.randomseed(os.time())

function dropChance(probability)
    if type(probability) ~= "number" or probability < 0 or probability > 100 then
        error("Probability must be a number between 0 and 100")
    end
    local chance = probability / 100
    local random = math.random()
    return random <= chance
end

function CapitalSpell(race)
	local spellHuman = {'g000ss0002', 'g000ss0003', 'g000ss0178', 'g000ss0007', 'g000ss0004'}
	local spellDwarf = {'g000ss0021', 'g000ss0023', 'g000ss0022', 'g000ss0179', 'g000ss0024', 'g000ss0025'}
	local spellUndead = {'g000ss0064', 'g000ss0065', 'g000ss0134', 'g000ss0181', 'g000ss0062', 'g000ss0061'}
	local spellHeretic = {'g000ss0045', 'g000ss0044', 'g000ss0043', 'g000ss0041'}
	local spellElf = {'g000ss0101', 'g000ss0102', 'g000ss0106', 'g000ss0097', 'g000ss0098'}
	
    local capspell = {}

    if race == Race.Human then table.insert(capspell, spellHuman[math.random(1,#spellHuman)])
    elseif race == Race.Dwarf then table.insert(capspell, spellDwarf[math.random(1,#spellDwarf)])
    elseif race == Race.Undead then table.insert(capspell, spellUndead[math.random(1,#spellUndead)])
    elseif race == Race.Heretic then table.insert(capspell, spellHeretic[math.random(1,#spellHeretic)])
    elseif race == Race.Elf then table.insert(capspell, spellElf[math.random(1,#spellElf)])
    end
    return capspell
end

function getStack(tier, stackCount, itemsTable, race)
    local squad = { }
    if (tier == 1) then squad = SubraceSquad(1)
    elseif (tier == 2 or tier == 3 or tier == 1.5) then squad = SubraceSquad(2)
    elseif (tier == 4) then squad = SubraceSquad(3)
    elseif (tier == 5 or tier == 6) then squad = SubraceSquad(4)
    end
    local expValueStack = { }
    if (tier == 1) then
        expValueStack.min = 180 * stackCount
        expValueStack.max = 240 * stackCount
    elseif (tier == 1.5) then
        expValueStack.min = 220 * stackCount
        expValueStack.max = 330 * stackCount
    elseif (tier == 2) then
        expValueStack.min = 325 * stackCount
        expValueStack.max = 450 * stackCount
    elseif (tier == 3) then
        expValueStack.min = 440 * stackCount
        expValueStack.max = 650 * stackCount
    elseif (tier == 4) then 
        expValueStack.min = 650 * stackCount
        expValueStack.max = 950 * stackCount
    elseif (tier == 5) then
        expValueStack.min = 950 * stackCount
        expValueStack.max = 1780 * stackCount
    elseif (tier == 6) then
        expValueStack.min = 1800 * stackCount
        expValueStack.max = 2700 * stackCount
    end
    return {
        count = stackCount,
        subraceTypes = squad,
        value = expValueStack,
        owner = race,
        loot = {
            items = itemsTable
        }
    }
end


function getGuard(tier, itemsTable)
    local squad = { }
    if (tier == 1) then squad = SubraceSquad(1)
    elseif (tier == 2 or tier == 3) then squad = SubraceSquad(2)
    elseif (tier == 4 or tier == 10)  then squad = SubraceSquad(3)
    elseif (tier == 5 or tier == 11) then squad = SubraceSquad(4)
    elseif (tier == 6 or tier == 12) then squad = SubraceSquad(GO)
    end
    local expValueGuard = { }
    if (tier == 1) then
        expValueGuard.min = 180
        expValueGuard.max = 270
    elseif (tier == 2) then
        expValueGuard.min = 290
        expValueGuard.max = 420
    elseif (tier == 3) then
        expValueGuard.min = 440
        expValueGuard.max = 650
    elseif (tier == 4) then
        expValueGuard.min = 640
        expValueGuard.max = 950
    elseif (tier == 5) then
        expValueGuard.min = 900
        expValueGuard.max = 1220
    elseif (tier == 6) then
        expValueGuard.min = 1100
        expValueGuard.max = 1850
    elseif (tier == 10) then
        expValueGuard.min = 420
        expValueGuard.max = 500
    elseif (tier == 11) then
        expValueGuard.min = 1350
        expValueGuard.max = 1950
    elseif (tier == 12) then
        expValueGuard.min = 1900
        expValueGuard.max = 2800
    end
    return {
        subraceTypes = squad,
        value = expValueGuard,
        loot = {
            items = itemsTable
        }
    }
end

function getGO(tier, itemsTable)
    local squad = { }
    if (tier == 10)  then squad = SubraceSquad(3)
    elseif (tier == 11) then squad = SubraceSquad(4)
    
    end
    local expValueGuard = { }
    if (tier == 10) then
        expValueGuard.min = 420
        expValueGuard.max = 500
    elseif (tier == 11) then
        expValueGuard.min = 1350
        expValueGuard.max = 1950
    end
    return {
        subraceTypes = squad,
        leaderIds = {
            'g000uu5356',      --Паладин                                  50.00        330.00      
            'g000uu7527',      --Фанатик                                  50.00        330.00      
            'g000uu8208',      --Черный рыцарь                            50.00        330.00      
            'g000uu8234',      --Кокильяр                                 50.00        330.00      
            'g000uu8243',      --Жрец Имира                               50.00        330.00      
            'g000uu8302',      --Хранитель Ордена                         50.00        330.00      
            'g000uu8313',      --Кастелян                                 50.00        330.00      
            'g000uu8236',      --Баррантор                                50.00        335.00      
            'g000uu8239',      --Драуг                                    50.00        335.00      
            'g000uu7548',      --Черный тролль                            44.00        335.00      
            'g000uu8319',      --Бааван ши                                50.00        335.00      
            'g000uu8317',      --Хан орков                                46.00        345.00      
            'g000uu7532',      --Якшини                                   50.00        350.00      
            'g000uu7602',      --Соглядатай                               40.00        350.00      
            'g000uu6017',      --Костяной лорд                            50.00        360.00      
            'g000uu7576',      --Медный дракон                            43.00        370.00      
            'g000uu7575',      --Изумрудный дракон                        40.00        380.00      
            'g000uu5108',      --Повелитель эльфов                        40.00        390.00      
            'g000uu7625',      --Темный оракул                            52.00        395.00      
            'g000uu5129',      --Морской змей                             50.00        400.00      
            'g000uu8260',      --Искуситель                               54.00        400.00      
            'g000uu7600',      --Длань инквизиции                         50.00        420.00      
            'g000uu8257',      --Громовержец                              54.00        430.00      
            'g000uu7591',      --Лесоруб                                  45.00        430.00      
            'g000uu5367',      --Ониксовая гаргулья                       40.00        445.00      
            'g000uu7509',      --Голем                                    42.00        450.00      
            'g000uu8210',      --Гибельный рой                            40.00        450.00      
            'g000uu7530',      --Жрец Смерти                              50.00        475.00      
            'g000uu5358',      --Наместник Вотана                         42.00        500.00      
            'g000uu5380',      --Вирм                                     48.00        500.00      
            'g000uu7511',      --Каменный предок                          50.00        500.00      
            'g000uu8193',      --Бехемот                                  48.00        500.00      
            'g000uu8223',      --Верховный некромант                      42.00        500.00      
            'g000uu8226',      --Сын Земли                                48.00        500.00      
            'g000uu8280',      --Пещерный паук                            40.00        500.00      
            'g000uu7502',      --Пожиратель                               42.00        535.00      
            'g000uu7519',      --Вердант                                  50.00        550.00      
            'g000uu7601',      --Адепт культа                             51.00        550.00      
            'g000uu7554',      --Йорм                                     40.00        565.00      
            'g000uu7596',      --Сюзерен бездны                           47.00        575.00      
            'g000uu8261',      --Костяная госпожа                         55.00        595.00      
            'g000uu5123',      --Зеленый дракон                           43.00        650.00      
            'g000uu6007',      --Темный эльф-жрец                         55.00        735.00      
            'g000uu7593',      --Болотный страж                           55.00        775.00      
            'g000uu8176',      --Вестник поглощения                       46.00        900.00      
            'g000uu8177',      --Вестник немощи                           46.00        900.00      
            'g000uu8187'      --Вестник перемен                          46.00        900.00  
        },
        value = expValueGuard,
        loot = {
            items = itemsTable
        }
    }
end


function getGuardAggressive(tier, itemsTable)
    local squad = { }
    if (tier == 1) then squad = SubraceSquad(1)
    elseif (tier == 2 or tier == 3) then squad = SubraceSquad(2)
    elseif (tier == 4 or tier == 10)  then squad = SubraceSquad(3)
    elseif (tier == 5 or tier == 11) then squad = SubraceSquad(4)
    elseif (tier == 6 or tier == 12) then squad = SubraceSquad(GO)
    end
    local expValueGuard = { }
    if (tier == 1) then
        expValueGuard.min = 180
        expValueGuard.max = 270
    elseif (tier == 2) then
        expValueGuard.min = 290
        expValueGuard.max = 420
    elseif (tier == 3) then
        expValueGuard.min = 440
        expValueGuard.max = 650
    elseif (tier == 4) then
        expValueGuard.min = 640
        expValueGuard.max = 950
    elseif (tier == 5) then
        expValueGuard.min = 900
        expValueGuard.max = 1220
    elseif (tier == 6) then
        expValueGuard.min = 1100
        expValueGuard.max = 1850
    elseif (tier == 10) then
        expValueGuard.min = 420
        expValueGuard.max = 500
    elseif (tier == 11) then
        expValueGuard.min = 1350
        expValueGuard.max = 1950
    elseif (tier == 12) then
        expValueGuard.min = 1900
        expValueGuard.max = 2800
    end
    return {
        subraceTypes = squad,
        value = expValueGuard,
        order = Order.Guard,
        loot = {
            items = itemsTable
        }
    }
end

function getGOAggressive(tier, itemsTable)
    local squad = { }
    if (tier == 10)  then squad = SubraceSquad(3)
    elseif (tier == 11) then squad = SubraceSquad(4)
    elseif (tier == 12) then squad = SubraceSquad(GO)
    end
    local expValueGuard = { }
    if (tier == 10) then
        expValueGuard.min = 420
        expValueGuard.max = 500
    elseif (tier == 11) then
        expValueGuard.min = 1350
        expValueGuard.max = 1950
    elseif (tier == 12) then
        expValueGuard.min = 1900
        expValueGuard.max = 2800
    end
    return {
        subraceTypes = squad,
        leaderIds = {
            
            'g000uu5123',      --Зеленый дракон                           43.00        650.00
            'g000uu7576',      --Медный дракон                            43.00        370.00
            'g000uu7575',      --Изумрудный дракон                        40.00        380.00
            'g000uu6015',      --Король гномов                            57.00        500.00      
            'g000uu7507',      --Мститель                                 70.00        500.00      
            'g000uu6001',      --Адское дитя                              65.00        600.00      
            'g000uu6019',      --Вампиресса                               61.00        600.00      
            'g000uu7515',      --Танатос                                  70.00        600.00      
            'g000uu7549',      --Скелет воитель                           64.00        600.00      
            'g000uu8232',      --Катафрактарий                            58.00        650.00      
            'g000uu6005',      --Маг Хугин                                70.00        850.00      
            'g000uu5368',      --Тиамат                                   60.00        900.00      
            'g000uu5370',      --Демон Бездны                             60.00        900.00      
            'g000uu7500',      --Гримтурс                                 60.00        900.00      
            'g000uu7501',      --Змий разложения                          60.00        900.00      
            'g000uu8195',      --Багряный ангел                           60.00        900.00      
            'g000uu7555',      --Лиргид                                   58.00        985.00      
            'g000uu7541',      --Свежеватель                              63.00        1150.00     
            'g000uu5120',      --Белый дракон                             62.00        1160.00     
            'g000uu7520',      --Костяной голем                           57.00        1195.00     
            'g000uu5121',      --Синий дракон                             63.00        1210.00     
            'g000uu8149',      --Бомбарда                                 70.00        1250.00     
            'g000uu8217',      --Призрачный дракон                        67.00        1285.00     
            'g000uu5119',      --Красный дракон                           70.00        1350.00     
            'g000uu7503',      --Ангел Перерожденный                      64.00        1350.00     
            'g000uu6016',      --Мантикора                                62.00        1370.00     
            'g000uu8198',      --Желтый дракон                            66.00        1440.00     
            'g000uu8259',      --Колосс                                   62.00        1505.00     
            'g000uu8269',      --Кровавый дракон                          65.00        1550.00     
            'g000uu5122'      --Черный дракон                            70.00        1620.00     
        },
        value = expValueGuard,
        order = Order.Guard,
        loot = {
            items = itemsTable
        }
    }
end



function guardrnd(tier, itemsTable)
    if math.random() < 0.7 then
        return getGuard(tier, itemsTable)
    else
        return getGuardAggressive(tier, itemsTable)
    end
end

function getGOrnd(tier, itemsTable)
    if math.random() < 0.85 then
        return getGuard(tier, itemsTable)
    else
        return getGOAggressive(tier, itemsTable)
    end
end


function getTown(townTier, getGuard, itemsTable)
    local expValue = { }
    if ( townTier == 1 ) then
        expValue.min = 180 * 1.1
        expValue.max = 250 * 1.1
    elseif ( townTier == 2) then
        expValue.min = 240 * 1.1
        expValue.max = 420 * 1.1
    elseif ( townTier == 3) then
        expValue.min = 440 * 1.1
        expValue.max = 650 * 1.1
    elseif ( townTier == 4) then
        expValue.min = 670 * 1.1
        expValue.max = 970 * 1.1
    elseif ( townTier == 5) then
        expValue.min = 970 * 1.1
        expValue.max = 1420 * 1.1
    end
    local townGuard = { }
    if ( townTier == 1 ) then
        townGuard = SubraceSquad(1)
    elseif ( townTier == 2) then
        townGuard = SubraceSquad(2)
    elseif ( townTier == 3) then
        townGuard = SubraceSquad(3)
    elseif ( townTier == 4 or townTier > 4) then
        townGuard = SubraceSquad(4)
    end
    return {
        tier = townTier,
        garrison = {
            subraceTypes = townGuard,
            value = expValue,
            loot = {items = itemsTable}},
        stack = getGuard,
        gapMask = 9
    }
end

function getTownResp(townTier, getGuard, itemsTable)
    return {
        tier = townTier,
        garrison = {
            loot = {items = itemsTable}},
        stack = getGuard,
        gapMask = 9
    }
end

function getRuins(tier, ruinsGold, ruinsItem)
    local squadStack = { }
    if (tier == 1) then squadStack = SubraceSquad(1)
    elseif (tier == 2 or tier == 3) then squadStack = SubraceSquad(2)
    elseif (tier == 4) then squadStack = SubraceSquad(3)
    elseif (tier == 5) then squadStack = SubraceSquad(4)
    elseif (tier == 6) then squadStack = SubraceSquad(GO)
    end
    local expValueGuard = { }
    if (tier == 1) then
        expValueGuard.min = 200
        expValueGuard.max = 280
    elseif (tier == 2) then
        expValueGuard.min = 280
        expValueGuard.max = 360
    elseif (tier == 3) then
        expValueGuard.min = 360
        expValueGuard.max = 510
    elseif (tier == 4) then
        expValueGuard.min = 500
        expValueGuard.max = 790
    elseif (tier == 5) then
        expValueGuard.min = 780
        expValueGuard.max = 1230
    elseif (tier == 6) then
        expValueGuard.min = 1100
        expValueGuard.max = 1760
    end
	return {
        gold = ruinsGold,
        guard = {
			subraceTypes = squadStack,
			value = expValueGuard,
		},
        loot = {
            items = ruinsItem,
        }
    }
end

function getBags(countBags, itemsBags)
    return {
            count = countBags,
            loot = {
                items = itemsBags,
            },
        }
end

function getResourceMarket(Guard)
    return {
    {
        exchangeRates = [[
            function getExchangeRates(visitor)
                    local r1 = 4
                    local r2 = 1
                    local r3 = 3
                return {
                    {
                        Resource.Gold,
                        {
                        { Resource.LifeMana, r3, r2 },
                        { Resource.DeathMana, r3, r2 },
                        { Resource.RunicMana, r3, r2 },
                        { Resource.InfernalMana, r3, r2 },
                        { Resource.GroveMana, r3, r2 }
                        }
                    },
                    {
                        Resource.GroveMana,
                        {
                        { Resource.LifeMana, r1, r2 },
                        { Resource.DeathMana, r1, r2 },
                        { Resource.RunicMana, r1, r2 },
                        { Resource.InfernalMana, r1, r2 },
                        { Resource.Gold, r3, r2 }
                        }
                    },
                    {
                        Resource.LifeMana,
                        {
                        { Resource.Gold, r3, r2 },
                        { Resource.DeathMana, r1, r2 },
                        { Resource.RunicMana, r1, r2 },
                        { Resource.InfernalMana, r1, r2 },
                        { Resource.GroveMana, r1, r2 }
                        }
                    },
                    {
                        Resource.RunicMana,
                        {
                        { Resource.LifeMana, r1, r2 },
                        { Resource.DeathMana, r1, r2 },
                        { Resource.Gold, r3, r2 },
                        { Resource.InfernalMana, r1, r2 },
                        { Resource.GroveMana, r1, r2 }
                        }
                    },
                    {
                        Resource.DeathMana,
                        {
                        { Resource.LifeMana, r1, r2 },
                        { Resource.Gold, r3, r2 },
                        { Resource.RunicMana, r1, r2 },
                        { Resource.InfernalMana, r1, r2 },
                        { Resource.GroveMana, r1, r2 }
                        }
                    },
                    {
                        Resource.InfernalMana,
                        {
                        { Resource.LifeMana, r1, r2 },
                        { Resource.DeathMana, r1, r2 },
                        { Resource.RunicMana, r1, r2 },
                        { Resource.Gold, r3, r2 },
                        { Resource.GroveMana, r1, r2 }
                        }
                    }
                    },
                }
            end
    ]],
        stock = {
            {resource = Resource.Gold, value = { min = 1500, max = 1500 }},
            {resource = Resource.GroveMana, value = { min = 600, max = 600 }},
            {resource = Resource.LifeMana, value = { min = 600, max = 600 }},
            {resource = Resource.RunicMana, value = { min = 600, max = 600 }},
            {resource = Resource.DeathMana, value = { min = 600, max = 600 }},
            {resource = Resource.InfernalMana, value = { min = 600, max = 600 }}
            },
            guard = Guard
        }
    }
    end

    function getRM(Guard)
        return {
        {
            exchangeRates = [[
                function getExchangeRates(visitor)
                        local r1 = 25
                        local r2 = 25
                        local r3 = 75
                    return {
                        {
                            Resource.Gold,
                            {
                            { Resource.LifeMana, r3, r2 },
                            { Resource.DeathMana, r3, r2 },
                            { Resource.RunicMana, r3, r2 },
                            { Resource.InfernalMana, r3, r2 },
                            { Resource.GroveMana, r3, r2 }
                            }
                        },
                        {
                            Resource.GroveMana,
                            {
                            { Resource.LifeMana, r1, r2 },
                            { Resource.DeathMana, r1, r2 },
                            { Resource.RunicMana, r1, r2 },
                            { Resource.InfernalMana, r1, r2 },
                            { Resource.Gold, r3, r2 }
                            }
                        },
                        {
                            Resource.LifeMana,
                            {
                            { Resource.Gold, r3, r2 },
                            { Resource.DeathMana, r1, r2 },
                            { Resource.RunicMana, r1, r2 },
                            { Resource.InfernalMana, r1, r2 },
                            { Resource.GroveMana, r1, r2 }
                            }
                        },
                        {
                            Resource.RunicMana,
                            {
                            { Resource.LifeMana, r1, r2 },
                            { Resource.DeathMana, r1, r2 },
                            { Resource.Gold, r3, r2 },
                            { Resource.InfernalMana, r1, r2 },
                            { Resource.GroveMana, r1, r2 }
                            }
                        },
                        {
                            Resource.DeathMana,
                            {
                            { Resource.LifeMana, r1, r2 },
                            { Resource.Gold, r3, r2 },
                            { Resource.RunicMana, r1, r2 },
                            { Resource.InfernalMana, r1, r2 },
                            { Resource.GroveMana, r1, r2 }
                            }
                        },
                        {
                            Resource.InfernalMana,
                            {
                            { Resource.LifeMana, r1, r2 },
                            { Resource.DeathMana, r1, r2 },
                            { Resource.RunicMana, r1, r2 },
                            { Resource.Gold, r3, r2 },
                            { Resource.GroveMana, r1, r2 }
                            }
                        }
                        },
                    }
                end
        ]],
            stock = {
                {resource = Resource.Gold, value = { min = 0, max = 0 }},
                {resource = Resource.GroveMana, value = { min = 400, max = 400 }},
                {resource = Resource.LifeMana, value = { min = 400, max = 400 }},
                {resource = Resource.RunicMana, value = { min = 400, max = 400 }},
                {resource = Resource.DeathMana, value = { min = 400, max = 400 }},
                {resource = Resource.InfernalMana, value = { min = 400, max = 400 }}
                },
                guard = Guard
            }
        }
        end


function getMagicTower(tier, GuardTower)

    local spellt1 = {'g000ss0044', 'g000ss0045', 'g000ss0002', 'g000ss0007', 'g000ss0021', 'g000ss0178', 'g000ss0192', 'g000ss0152', 'g000ss0134', 'g000ss0191', 'g000ss0065', 'g000ss0003', 'g000ss0023', 
    'g000ss0064', 'g000ss0106', 'g000ss0181', 'g000ss0101', 'g000ss0179', 'g000ss0022'}
    local spellt1summon = {'g000ss0025', 'g000ss0061', 'g000ss0098'}
    local spellt2 = {'g000ss0180', 'g000ss0050', 'g000ss0049', 'g000ss0185', 'g000ss0123', 'g000ss0034', 'g000ss0197', 'g000ss0005', 'g000ss0001', 'g000ss0010', 'g000ss0016', 'g000ss0121', 
    'g000ss0187', 'g000ss0184', 'g000ss0069', 'g000ss0029', 'g000ss0183', 'g000ss0186', 'g000ss0182'}
    local spellt2summon = {'g000ss0046', 'g000ss0047', 'g000ss0008', 'g000ss0066', 'g000ss0103'}
    local spellt3 = {'g000ss0206', 'g000ss0207', 'g000ss0089', 'g000ss0051', 'g000ss0026', 'g000ss0011', 'g000ss0018', 'g000ss0085', 'g000ss0209', 'g000ss0201', 'g000ss0111', 'g000ss0205', 'g000ss0073', 'g000ss0012', 
    'g000ss0013', 'g000ss0208'}
    -- local spellt4 =  {'g000ss0055', 'g000ss0036', 'g000ss0082', 'g000ss0116', 'g000ss0076', 'g000ss0114', 'g000ss0017', 'g000ss0115', 'g000ss0035', 'g000ss0075'}

    local SpellList = { }
    if tier == 1 then
        for i = 1,5 do
            s = math.random(1, #spellt1)
            SpellList[i] = spellt1[s]
            table.remove(spellt1, s)
        end
        for i = 6,10 do
            s = math.random(1, #spellt2)
            SpellList[i] = spellt2[s]
            table.remove(spellt2, s)
        end
        for i = 11,11 do
            s = math.random(1, #spellt1summon)
            SpellList[i] = spellt1summon[s]
            table.remove(spellt1summon, s)
        end
    elseif tier == 2 then
        for i = 1,2 do
            s = math.random(1, #spellt1)
            SpellList[i] = spellt1[s]
            table.remove(spellt1, s)
        end    
        for i = 3,6 do
            s = math.random(1, #spellt2)
            SpellList[i] = spellt2[s]
            table.remove(spellt2, s)
        end
        for i = 7,9 do
            s = math.random(1, #spellt3)
            SpellList[i] = spellt3[s]
            table.remove(spellt3, s)
        end
        for i = 10,12 do
            s = math.random(1, #spellt3)
            SpellList[i] = spellt3[s]
            table.remove(spellt3, s)
        end
        for i = 13,13 do
            s = math.random(1, #spellt2summon)
            SpellList[i] = spellt2summon[s]
            table.remove(spellt2summon, s)
        end
    end
    return
        {
        spells = SpellList,
        guard = GuardTower,
        }
end

function getMercenariesleft(getGuard, playerRace, playerRace2, playerRace3, playerRace4)
    local unitsMercenaries = {}
    local i = 1
    local allowed_races = {playerRace, playerRace2, playerRace3, playerRace4}
    local hasHuman = false
    local hasDwarf = false
    local hasHeretic = false
    local hasUndead = false
    local hasElf = false
    for _, race in ipairs(allowed_races) do
        if race == Race.Human then
            hasHuman = true
            break
        end
    end
    if hasHuman then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0001', level = 1, unique = true} i = i + 1 end -- Сквайр
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g003uu5001', level = 1, unique = true} i = i + 1 end -- Боец ополчения
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7561', level = 1, unique = true} i = i + 1 end -- Егерь
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8311', level = 1, unique = true} i = i + 1 end -- Ардет
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0005', level = 1, unique = true} i = i + 1 end -- Инквизитор
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0010', level = 1, unique = true} i = i + 1 end -- Маг
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g003uu5003', level = 1, unique = true} i = i + 1 end -- Ревнитель
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Dwarf then
            hasDwarf = true
            break
        end
    end
    if hasDwarf then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0036', level = 1, unique = true} i = i + 1 end -- Гном
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0027', level = 1, unique = true} i = i + 1 end -- Арбалетчик
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0030', level = 1, unique = true} i = i + 1 end -- Горный Великан
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0038', level = 1, unique = true} i = i + 1 end -- Ветеран
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0041', level = 1, unique = true} i = i + 1 end -- Горец
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g006uu1128', level = 1, unique = true} i = i + 1 end -- Мастер печи
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Heretic then
            hasHeretic = true
            break
        end
    end
    if hasHeretic then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0052', level = 1, unique = true} i = i + 1 end -- Одержимый
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7572', level = 1, unique = true} i = i + 1 end -- Апатитовая горгулья
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0058', level = 1, unique = true} i = i + 1 end -- Демон
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0056', level = 1, unique = true} i = i + 1 end -- Мраморная гаргулья
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0064', level = 1, unique = true} i = i + 1 end -- Демонолог
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2003', level = 1, unique = true} i = i + 1 end -- Мучитель
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0054', level = 1, unique = true} i = i + 1 end -- Чёрный паладин
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Undead then
            hasUndead = true
            break
        end
    end
    if hasUndead then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0086', level = 1, unique = true} i = i + 1 end -- Мертвец
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0092', level = 1, unique = true} i = i + 1 end -- Оборотень
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0094', level = 1, unique = true} i = i + 1 end -- Дракон Рока
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0085', level = 1, unique = true} i = i + 1 end -- Злой дух
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0091', level = 1, unique = true} i = i + 1 end -- Лорд Тьмы
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0082', level = 1, unique = true} i = i + 1 end -- Некромант
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g003uu5012', level = 1, unique = true} i = i + 1 end -- Окр-палач
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0088', level = 1, unique = true} i = i + 1 end -- Скелет-воин
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Elf then
            hasElf = true
            break
        end
    end
    if hasElf then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8014', level = 1, unique = true} i = i + 1 end -- Контавр-копейщик
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8015', level = 1, unique = true} i = i + 1 end -- Кентавр-латник
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8030', level = 1, unique = true} i = i + 1 end -- Владыка небес
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8017', level = 1, unique = true} i = i + 1 end -- Кентаврь-дикарь
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8019', level = 1, unique = true} i = i + 1 end -- Охотник
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8022', level = 1, unique = true} i = i + 1 end -- Сторож
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8026', level = 1, unique = true} i = i + 1 end -- Чанелер
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8021', level = 1, unique = true} i = i + 1 end -- Бандит
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2012', level = 1, unique = true} i = i + 1 end -- Кентавр Стрелок
    end
    unitsMercenaries[i] = {id = 'g001uu8284', level = 1, unique = true} i = i + 1 -- Прядильщик 
    unitsMercenaries[i] = {id = 'g000uu8045', level = 1, unique = true} i = i + 1 -- Траппер
    unitsMercenaries[i] = {id = 'g000uu8247', level = 1, unique = true} i = i + 1 -- Разоритель
    unitsMercenaries[i] = {id = 'g001uu7550', level = 1, unique = true} i = i + 1 -- Айтвар
    unitsMercenaries[i] = {id = 'g001uu7546', level = 1, unique = true} i = i + 1 -- Окр-крушитель
    unitsMercenaries[i] = {id = 'g000uu5011', level = 1, unique = true} i = i + 1 -- Кентавр-фалангист
    unitsMercenaries[i] = {id = 'g000uu5028', level = 1, unique = true} i = i + 1 -- Тритон
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8218', level = 1, unique = true} i = i + 1 end -- Волхв
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7610', level = 1, unique = true} i = i + 1 end -- Ледяной ходок
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7609', level = 1, unique = true} i = i + 1 end -- Квартирмейстер
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8283', level = 1, unique = true} i = i + 1 end -- Каменный ткач
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu6106', level = 1, unique = true} i = i + 1 end -- Принцесса гномов
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5012', level = 1, unique = true} i = i + 1 end -- Окр-Багатур
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7608', level = 1, unique = true} i = i + 1 end -- Каменщик
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8041', level = 1, unique = true} i = i + 1 end -- Тёмный Эльф-мясник
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5040', level = 1, unique = true} i = i + 1 end -- Варвар
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8174', level = 1, unique = true} i = i + 1 end -- Вестник распада
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7624', level = 1, unique = true} i = i + 1 end -- Неприкаянная
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8306', level = 1, unique = true} i = i + 1 end -- Экзекутор
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7617', level = 1, unique = true} i = i + 1 end -- Тень культа
    return {
        units = unitsMercenaries,
        guard = getGuard
    }
end

function getMercenariesright(getGuard, playerRace, playerRace2, playerRace3, playerRace4)
    local unitsMercenaries = {}
    local i = 1
    local allowed_races = {playerRace, playerRace2, playerRace3, playerRace4}
    local hasHuman = false
    local hasDwarf = false
    local hasHeretic = false
    local hasUndead = false
    local hasElf = false
    for _, race in ipairs(allowed_races) do
        if race == Race.Human then
            hasHuman = true
            break
        end
    end
    if hasHuman then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0001', level = 1, unique = true} i = i + 1 end -- Сквайр
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g003uu5001', level = 1, unique = true} i = i + 1 end -- Боец ополчения
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7561', level = 1, unique = true} i = i + 1 end -- Егерь
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8311', level = 1, unique = true} i = i + 1 end -- Ардет
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0005', level = 1, unique = true} i = i + 1 end -- Инквизитор
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0010', level = 1, unique = true} i = i + 1 end -- Маг
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g003uu5003', level = 1, unique = true} i = i + 1 end -- Ревнитель
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Dwarf then
            hasDwarf = true
            break
        end
    end
    if hasDwarf then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0036', level = 1, unique = true} i = i + 1 end -- Гном
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0027', level = 1, unique = true} i = i + 1 end -- Арбалетчик
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0030', level = 1, unique = true} i = i + 1 end -- Горный Великан
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0038', level = 1, unique = true} i = i + 1 end -- Ветеран
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0041', level = 1, unique = true} i = i + 1 end -- Горец
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g006uu1128', level = 1, unique = true} i = i + 1 end -- Мастер печи
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Heretic then
            hasHeretic = true
            break
        end
    end
    if hasHeretic then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0052', level = 1, unique = true} i = i + 1 end -- Одержимый
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7572', level = 1, unique = true} i = i + 1 end -- Апатитовая горгулья
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0058', level = 1, unique = true} i = i + 1 end -- Демон
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0056', level = 1, unique = true} i = i + 1 end -- Мраморная гаргулья
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0064', level = 1, unique = true} i = i + 1 end -- Демонолог
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2003', level = 1, unique = true} i = i + 1 end -- Мучитель
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0054', level = 1, unique = true} i = i + 1 end -- Чёрный паладин
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Undead then
            hasUndead = true
            break
        end
    end
    if hasUndead then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0086', level = 1, unique = true} i = i + 1 end -- Мертвец
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0092', level = 1, unique = true} i = i + 1 end -- Оборотень
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0094', level = 1, unique = true} i = i + 1 end -- Дракон Рока
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0085', level = 1, unique = true} i = i + 1 end -- Злой дух
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0091', level = 1, unique = true} i = i + 1 end -- Лорд Тьмы
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0082', level = 1, unique = true} i = i + 1 end -- Некромант
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g003uu5012', level = 1, unique = true} i = i + 1 end -- Окр-палач
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0088', level = 1, unique = true} i = i + 1 end -- Скелет-воин 
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Elf then
            hasElf = true
            break
        end
    end
    if hasElf then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8014', level = 1, unique = true} i = i + 1 end -- Контавр-копейщик
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8015', level = 1, unique = true} i = i + 1 end -- Кентавр-латник
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8030', level = 1, unique = true} i = i + 1 end -- Владыка небес
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8017', level = 1, unique = true} i = i + 1 end -- Кентаврь-дикарь
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8019', level = 1, unique = true} i = i + 1 end -- Охотник
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8022', level = 1, unique = true} i = i + 1 end -- Сторож
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8026', level = 1, unique = true} i = i + 1 end -- Чанелер
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8021', level = 1, unique = true} i = i + 1 end -- Бандит
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2012', level = 1, unique = true} i = i + 1 end -- Кентавр Стрелок
    end
    unitsMercenaries[i] = {id = 'g001uu8282', level = 1, unique = true} i = i + 1 -- Тенистый паук
    unitsMercenaries[i] = {id = 'g000uu8045', level = 1, unique = true} i = i + 1 -- Траппер
    unitsMercenaries[i] = {id = 'g000uu8247', level = 1, unique = true} i = i + 1 -- Разоритель
    unitsMercenaries[i] = {id = 'g001uu7550', level = 1, unique = true} i = i + 1 -- Айтвар
    unitsMercenaries[i] = {id = 'g001uu7546', level = 1, unique = true} i = i + 1 -- Окр-крушитель
    unitsMercenaries[i] = {id = 'g000uu5011', level = 1, unique = true} i = i + 1 -- Кентавр-фалангист
    unitsMercenaries[i] = {id = 'g000uu5028', level = 1, unique = true} i = i + 1 -- Тритон
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7604', level = 1, unique = true} i = i + 1 end -- Незрячий страж
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7613', level = 1, unique = true} i = i + 1 end -- Огнеборец
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8151', level = 1, unique = true} i = i + 1 end -- Фурия
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7612', level = 1, unique = true} i = i + 1 end -- Королевский Арбалетчик
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7560', level = 1, unique = true} i = i + 1 end -- Каратель
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5032', level = 1, unique = true} i = i + 1 end -- Вождь Варваров
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7594', level = 1, unique = true} i = i + 1 end -- Инеит
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g003uu0023', level = 1, unique = true} i = i + 1 end -- Предатель
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5012', level = 1, unique = true} i = i + 1 end -- Орк-багатур
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7588', level = 1, unique = true} i = i + 1 end -- Отлученный
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5024', level = 1, unique = true} i = i + 1 end -- Ящер-воин
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8276', level = 1, unique = true} i = i + 1 end -- Последователь
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8277', level = 1, unique = true} i = i + 1 end -- Уста богов
    return {
        units = unitsMercenaries,
        guard = getGuard
    }
end

function getMerC(getGuard, playerRace, playerRace2, playerRace3, playerRace4)
    local unitsMercenaries = {}
    local i = 1
    local allowed_races = {playerRace, playerRace2, playerRace3, playerRace4}
    local hasHuman = false
    local hasDwarf = false
    local hasHeretic = false
    local hasUndead = false
    local hasElf = false
    for _, race in ipairs(allowed_races) do
        if race == Race.Human then
            hasHuman = true
            break
        end
    end
    if not hasHuman then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0157', level = 1, unique = true} i = i + 1 end -- Великий Инквизитор
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0014', level = 1, unique = true} i = i + 1 end -- Ангел
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2010', level = 1, unique = true} i = i + 1 end -- Кара императора
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0152', level = 1, unique = true} i = i + 1  -- Белый маг
        else unitsMercenaries[i] = {id = 'g001uu7582', level = 1, unique = true} i = i + 1 end -- Криомант
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu9000', level = 1, unique = true} i = i + 1  -- Юстициар
        else unitsMercenaries[i] = {id = 'g001uu8312', level = 1, unique = true} i = i + 1 end -- Игнар
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8313', level = 1, unique = true} i = i + 1  -- Кастелян
        else unitsMercenaries[i] = {id = 'g003uu8050', level = 1, unique = true} i = i + 1 end -- Хранитель Ордена
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0155', level = 1, unique = true} i = i + 1  -- Мастер Клинка
        else unitsMercenaries[i] = {id = 'g000uu0156', level = 1, unique = true} i = i + 1 end -- Палладин
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Dwarf then
            hasDwarf = true
            break
        end
    end
    if not hasDwarf then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2001', level = 1, unique = true} i = i + 1 end -- Гримтурс
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2011', level = 1, unique = true} i = i + 1 end -- Хранитель рун
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2020', level = 1, unique = true} i = i + 1 end -- Метатель огня
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8243', level = 1, unique = true} i = i + 1 end -- Жрец Имира
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0165', level = 1, unique = true} i = i + 1  -- Конунг
        else unitsMercenaries[i] = {id = 'g000uu0039', level = 1, unique = true} i = i + 1 end -- Ярл
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0158', level = 1, unique = true} i = i + 1 end -- Наместник Вотана
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Heretic then
            hasHeretic = true
            break
        end
    end
    if not hasHeretic then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu2004', level = 1, unique = true} i = i + 1 end -- Истязатель душ
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8194', level = 1, unique = true} i = i + 1 end -- Багряный Ангел
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0169', level = 1, unique = true} i = i + 1 end -- Владыка
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0168', level = 1, unique = true} i = i + 1 end -- Тиамат
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8236', level = 1, unique = true} i = i + 1  -- Баррантор
        else unitsMercenaries[i] = {id = 'g000uu0172', level = 1, unique = true} i = i + 1 end -- Модеус
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0166', level = 1, unique = true} i = i + 1  -- Возвышенный
        else unitsMercenaries[i] = {id = 'g000uu8254', level = 1, unique = true} i = i + 1 end -- Искоренитель
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Undead then
            hasUndead = true
            break
        end
    end
    if not hasUndead then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8155', level = 1, unique = true} i = i + 1 end -- Змий разложения
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8314', level = 1, unique = true} i = i + 1 end -- Клеврет смерти
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0180', level = 1, unique = true} i = i + 1 end -- Вирм
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0176', level = 1, unique = true} i = i + 1  -- Архилич
        else unitsMercenaries[i] = {id = 'g000uu0175', level = 1, unique = true} i = i + 1 end --  Верховный вампир
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu0177', level = 1, unique = true} i = i + 1  -- Смерть 
        else unitsMercenaries[i] = {id = 'g001uu8239', level = 1, unique = true} i = i + 1 end -- Драуг
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7540', level = 1, unique = true} i = i + 1  -- Каган Каменной пасти
        else unitsMercenaries[i] = {id = 'g003uu5014', level = 1, unique = true} i = i + 1 end -- Хан Каменной пасти
    end
    for _, race in ipairs(allowed_races) do
        if race == Race.Elf then
            hasElf = true
            break
        end
    end
    if not hasElf then
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7578', level = 1, unique = true} i = i + 1 end -- Кераст
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8258', level = 1, unique = true} i = i + 1 end -- Консул
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8233', level = 1, unique = true} i = i + 1 end -- Кокильяр
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8052', level = 1, unique = true} i = i + 1 end -- Мародёр
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8020', level = 1, unique = true} i = i + 1 end -- Стингер
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8212', level = 1, unique = true} i = i + 1 end -- Прародитель
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7579', level = 1, unique = true} i = i + 1 end -- Кентавр-гвардеец
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8024', level = 1, unique = true} i = i + 1  --
        else unitsMercenaries[i] = {id = 'g000uu8023', level = 1, unique = true} i = i + 1 end -- Стражник
        if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8027', level = 1, unique = true} i = i + 1  -- Архонт
        else unitsMercenaries[i] = {id = 'g000uu8028', level = 1, unique = true} i = i + 1 end -- Тиург
    end
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8237', level = 1, unique = true} i = i + 1 end -- первородная сущность
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8153', level = 1, unique = true} i = i + 1 end -- жнец
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8260', level = 1, unique = true} i = i + 1 end -- Искуситель
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5020', level = 1, unique = true} i = i + 1 end -- Белый дракон
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu6115', level = 1, unique = true} i = i + 1 end -- Король гномов
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu6117', level = 1, unique = true} i = i + 1 end -- Костяной лорд
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5014', level = 1, unique = true} i = i + 1 end -- Хан Орков
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8197', level = 1, unique = true} i = i + 1 end -- Жёлтый дракон
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7566', level = 1, unique = true} i = i + 1 end -- Первородная сущность
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5008', level = 1, unique = true} i = i + 1 end -- Повелитель Эльфов
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8278', level = 1, unique = true} i = i + 1 end -- Божественная длань
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5023', level = 1, unique = true} i = i + 1 end -- Зелёный дракон
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu7600', level = 1, unique = true} i = i + 1 end -- Длань Инквизиции
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8255', level = 1, unique = true} i = i + 1 end -- Эльф-тень
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5019', level = 1, unique = true} i = i + 1 end -- Красный дракон
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8231', level = 1, unique = true} i = i + 1 end -- Катафрактарий
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g001uu8269', level = 1, unique = true} i = i + 1 end -- Кровавый дракон
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7589', level = 1, unique = true} i = i + 1 end -- Осквернитель
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu8244', level = 1, unique = true} i = i + 1 end -- Отступник
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5010', level = 1, unique = true} i = i + 1 end -- Облачная погибель
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu7567', level = 1, unique = true} i = i + 1 end -- Первородная сущность
    if math.random(0,1) == 1 then unitsMercenaries[i] = {id = 'g000uu5021', level = 1, unique = true} i = i + 1 end -- Синий дракон
    return {
        units = unitsMercenaries,
        guard = getGuard
    }
end


function getReward(Type, Zone)

    local ElexirDotProtection = {'g001ig0329', 'g001ig0351', 'g001ig0343', 'g001ig0341'}
    local ElexirProtection = {'g000ig0022', 'g000ig0021', 'g000ig0023', 'g000ig0024', 'g001ig0125', 'g001ig0036'}
    local LowElexir = {'g000ig0014','g000ig0008', 'g000ig0011', 'g000ig0002', 'g001ig0560', 'g001ig0547', 'g001ig0490', 'g002ig0005'}
    local MediumElexir = {'g000ig0009', 'g000ig0012', 'g000ig0015', 'g001ig0491', 'g001ig0127', 'g001ig0562', 'g000ig0003', 'g002ig0008'}
    local HighElexir = {'g000ig0020', 'g000ig0019', 'g000ig0017', 'g001ig0126', 'g002ig0006', 'g002ig0007', 'g001ig0355', 'g001ig0128'}
    local LowPermanent = {'g001ig0533', 'g001ig0315', 'g001ig0309', 'g001ig0313', 'g001ig0130', 'g001ig0311', 'g001ig0307', 'g001ig0083'} -- g001ig0006 -50% opita
    local MediumPermanent = {'g001ig0317', 'g001ig0516', 'g000ig0010', 'g000ig0016', 'g000ig0013', 'g000ig0004', 'g001ig0548', 'g001ig0534'} -- g001ig0519 - 10 soprotivleniya voram allways,
    local HighPermanent = {'g001ig0518', 'g001ig0312', 'g001ig0308', 'g001ig0316', 'g001ig0310', 'g001ig0318', 'g001ig0506'} -- g001ig0376 30% regena, g001ig0513 - 5 muvov
    local AuraPermanentLow = {'g001ig0026', 'g001ig0027', 'g001ig0563', 'g001ig0028', 'g001ig0034', 'g001ig0029', 'g001ig0030'}
    local AuraPermanentHigh = {'g001ig0031', 'g001ig0564', 'g001ig0024', 'g001ig0021', 'g001ig0023',  'g001ig0022', 'g001ig0025', 'g001ig0019'}
    local ElexirPermanentDot = {'g001ig0332', 'g001ig0342', 'g001ig0346', 'g001ig0330', 'g001ig0328', 'g001ig0352', 'g001ig0338', 'g001ig0340', 'g001ig0336', 'g001ig0344', 'g001ig0354', 'g001ig0348'}
    local ElexirPermanentProtected = {'g001ig0320', 'g001ig0323', 'g001ig0321', 'g001ig0322', 'g001ig0325', 'g001ig0326'}
    local Permanentskill = {'g001ig0530', 'g001ig0527', 'g001ig0531', 'g001ig0525', 'g001ig0524', 'g001ig0529', 'g001ig0526', 'g001ig0501', 'g001ig0528'}
    local TalismanSummont1 = {'g001ig0267', 'g001ig0265', 'g001ig0266', 'g001ig0264', 'g000ig9101'}
    local TalismanT1 = {'g001ig0184', 'g000ig9105', 'g000ig9131', 'g000ig9120'}
    local TalismanT2 = {'g000ig9130', 'g000ig9128', 'g000ig9123', 'g001ig0063', 'g000ig9116'}
    local TalismanT3 = {'g000ig9136', 'g001ig0185', 'g000ig9140'}
    local scrollT1 = {'g001ig0407', 'g000ig5022', 'g000ig5064', 'g000ig5044', 'g000ig5021', 'g001ig0250', 'g001ig0247', 'g001ig0073', 'g000ig5002', 'g000ig5106', 'g001ig0248', 'g000ig5023', 'g000ig5003', 'g000ig5101', 
        'g000ig5045', 'g000ig5065', 'g001ig0252', 'g000ig5102', 'g000ig5042', 'g000ig5041', 'g000ig5025', 'g000ig5061', 'g000ig5098', 'g000ig5084', 'g001ig0492', 'g000ig5009', 'g000ig5007', 'g000ig5119', 
        'g001ig0072', 'g001ig0574', 'g001ig0084', 'g001ig0194', 'g001ig0573', 'g001ig0255', 'g001ig0254', 'g000ig5050', 'g000ig5049', 'g001ig0253', 'g000ig5069', 'g001ig0256', 'g000ig5020', 'g001ig0568', 'g001ig0569',
        'g001ig0193', 'g000ig5030', 'g000ig5029', 'g000ig5068', 'g000ig5034', 'g000ig5088', 'g000ig5107', 'g000ig5047', 'g000ig5046', 'g000ig5066',
        'g000ig5008', 'g000ig5103', 'g001ig0249', 'g000ig5005', 'g000ig5001', 'g000ig5010', 'g000ig5016', 'g001ig0251', 'g001ig0123', 'g001ig0092', 'g001ig0085'}

    local scrollT2 = {'g001ig0165', 'g001ig0580', 'g001ig0577', 'g001ig0576', 'g001ig0578', 'g001ig0579', 'g000ig5012', 'g000ig5026', 'g001ig0572', 'g000ig5111', 'g000ig5089', 'g000ig5013', 'g000ig5110', 'g000ig5073', 
        'g000ig5074', 'g000ig5052', 'g001ig0570', 'g000ig5040', 'g000ig5085', 'g000ig5011', 'g000ig5018', 'g000ig5079', 'g000ig5059', 'g000ig5031', 'g000ig5071', 'g000ig5108'}

    local scrollT3 = {'g000ig5114', 'g000ig5035', 'g000ig5055', 'g000ig5076', 'g000ig5115', 'g000ig5017', 'g000ig5036', 'g000ig5082', 'g000ig5116',
        'g000ig5075', 'g000ig5113', 'g000ig5091', 'g001ig0586', 'g000ig5039', 'g000ig5057', 'g000ig5118'}

    local scrollDmgT1 = {'g000ig5024', 'g000ig5043', 'g000ig5097', 'g000ig5004', 'g000ig5062', 'g000ig5063'}
    local scrollDmgT2 = {'g000ig5048', 'g000ig5028', 'g000ig5067', 'g000ig5104'}
    local scrollDmgT3 = {'g000ig5054', 'g000ig5109', 'g000ig5033', 'g000ig5014', 'g000ig5072'}

    local weakOrbs = {'g001ig0189', 'g001ig0178', 'g001ig0472', 'g001ig0192', 'g001ig0473', 'g001ig0470', 'g001ig0458', 'g000ig9033', 'g001ig0302', 'g000ig9022', 'g000ig9031', 'g001ig0471', 'g000ig9017', 'g001ig0446'}
    local mediumOrbs = {'g001ig0450', 'g001ig0464', 'g001ig0176', 'g001ig0133', 'g001ig0191', 'g001ig0304', 'g001ig0467', 'g001ig0468', 'g001ig0469', 'g000ig9018', 'g001ig0453', 'g001ig0454', 'g001ig0300', 'g001ig0496',
                        'g001ig0187', 'g001ig0456', 'g001ig0474', 'g001ig0475', 'g000ig9042', 'g001ig0478', 'g001ig0443', 'g000ig9024', 'g001ig0461',}
    local strongOrbs = {'g000ig9025', 'g001ig0303', 'g001ig0477', 'g000ig9027', 'g001ig0459', 'g000ig9023', 'g001ig0136', 'g000ig9021', 'g000ig9016', 'g001ig0455', 'g000ig9032', 'g001ig0479', 'g001ig0134'}
    local strongOrbs2 = {'g000ig9043', 'g000ig9020', 'g001ig0131', 'g001ig0183', 'g001ig0462', 'g001ig0203', 'g000ig9014', 'g001ig0480', 'g000ig9028', 'g001ig0457', 'g001ig0466', 'g001ig0489'}
    local CurseOrbs = {'g001ig0295', 'g000ig9006', 'g000ig9039', 'g000ig9007', 'g001ig0181', 'g000ig9040'}
    local RezistOrbs = {'g001ig0056', 'g001ig0054', 'g001ig0055', 'g001ig0053', 'g001ig0058', 'g001ig0057'}

    local smallValuable = {'g000ig7001', 'g001ig0431', 'g000ig7002'}
    local mediumValuable = {'g001ig0433', 'g001ig0432', 'g000ig7004', 'g000ig7003'}
    local bigValuable = {'g000ig7007', 'g000ig7008', 'g000ig7005', 'g000ig7006'}
    local smallballmana = {'g001ig0481', 'g001ig0485', 'g001ig0482', 'g001ig0483', 'g001ig0484'} -- g001ig0486 50 all
    local mediumballmana = {'g001ig0146', 'g001ig0150', 'g001ig0147', 'g001ig0148', 'g001ig0149'} -- g001ig0151 100
    local bigballmana = {'g001ig0277', 'g001ig0281', 'g001ig0278', 'g001ig0279', 'g001ig0280'} -- g001ig0282 200

    local ArtT1 = {'g001ig0611', 'g001ig0418', 'g000ig2001', 'g000ig2002', 'g000ig3001', 'g001ig0100', 'g001ig0182'}
    local ArtT2 = {'g001ig0582',  'g001ig0558', 'g001ig0557', 'g001ig0047', 'g001ig0594','g000ig3017', 'g001ig0487', 'g001ig0589'}
    local ArtT3 = {'g000ig3002',  'g001ig0155', 'g001ig0042', 'g001ig0045', 'g000ig2003', 'g001ig0040', 'g001ig0559', 'g001ig0416', 'g001ig0591',
        'g001ig0173', 'g001ig0196',  'g000ig9137', 'g001ig0197', 'g001ig0158'}
    local ArtT4 = {'g001ig0124', 'g001ig0612', 'g001ig0585', 'g001ig0046', 'g001ig0592', 'g000ig2004', 'g001ig0060', 'g001ig0041', 'g001ig0590', 'g001ig0039',
        'g001ig0071', 'g001ig0411', 'g000ig3019', 'g000ig3006', 'g001ig0488', 'g001ig0413', 'g001ig0415', 'g000ig3004','g000ig9035', 'g000ig3021', 'g001ig0414'}
    local ArtT5 = {'g001ig0179', 'g001ig0410', 'g001ig0102', 'g001ig0412', 'g000ig2005', 'g001ig0043', 'g001ig0174'}

    local JewelT1 = {'g001ig0101', 'g000ig4008', 'g000ig3008', 'g001ig0428', 'g000ig4006', 'g001ig0494', 'g000ig4004', 'g001ig0495', 'g001ig0497', 'g000ig4003', 'g000ig4005',
        'g000ig4001', 'g000ig4002', 'g001ig0493'}
    local JewelT1town = {'g001ig0101', 'g000ig4008', 'g000ig3008', 'g001ig0428', 'g000ig4006', 'g001ig0494', 'g000ig4004', 'g001ig0495', 'g001ig0497', 'g000ig4003', 'g000ig4001', 'g000ig4002', 'g001ig0493'}
    local JewelT2 = { 'g001ig0421', 'g001ig0420', 'g001ig0423', 'g000ig4007', 'g001ig0427', 'g001ig0099', 'g001ig0430', 'g001ig0539', 'g000ig3020', 'g001ig0605'}
    local JewelT3 = { 'g001ig0037', 'g001ig0424', 'g001ig0425', 'g001ig0597', 'g000ig3022', 'g001ig0610', 'g001ig0156', 'g000ig2006'}
    local JewelT4 = { 'g001ig0104', 'g000ig7010', 'g000ig3005', 'g001ig0429', 'g001ig0116', 'g001ig0038','g001ig0419'}

    local BannerT1 = {'g000ig1005', 'g001ig0051', 'g000ig1001', 'g000ig1007', 'g000ig1003',}
    local BannerT2 = {'g001ig0369', 'g001ig0370', 'g001ig0142', 'g001ig0140', 'g001ig0141', 'g001ig0139', 'g001ig0145', 'g001ig0143', 'g001ig0293', 'g000ig1004', 'g001ig0365', 'g001ig0361',
        'g001ig0289', 'g000ig1008', 'g001ig0292', 'g001ig0357', 'g000ig1002', 'g000ig1006', 'g001ig0363', 'g001ig0364', 'g001ig0374', 'g001ig0358', 'g001ig0362'}
    local BannerT3 = {'g001ig0373', 'g001ig0367', 'g001ig0360', 'g000ig1016', 'g000ig1017', 'g000ig1015', 'g001ig0290', 'g001ig0291', 'g001ig0359'}
    local BannerT4 = {'g001ig0153', 'g001ig0144', 'g001ig0052', 'g001ig0366'}

    local TravelT1 = {'g001ig0108', 'g001ig0107', 'g001ig0105', 'g001ig0109', 'g001ig0106', 'g001ig0113'}
    local TravelT2 = {'g001ig0111', 'g000ig1010', 'g000ig8003', 'g001ig0606'}
    local TravelT3 = {'g000ig8004', 'g001ig0114', 'g001ig0115', 'g001ig0112'}

    local Wand = {'g001ig0387', 'g000ig6019', 'g001ig0397', 'g001ig0395', 'g001ig0394', 'g001ig0405', 'g001ig0402', 'g001ig0396', 'g001ig0399', 'g000ig6003', 'g000ig6012', 'g000ig6001'}
    local Wand2 = {'g000ig6013', 'g000ig6011', 'g001ig0097', 'g001ig0392', 'g001ig0403', 'g001ig0404', 'g001ig0401', 'g001ig0391', 'g000ig6014', 'g001ig0398'}
    local Wand3 = {'g001ig0096', 'g000ig6015'}


    local rewardItems = { }
    local rnd = nil
    local rnditem = math.random(1,4)
    ---- RESP ----
    if Type == 'town' and Zone == 'StartZone' then
        table.insert(rewardItems, {id = 'g001ig0180', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0005', min = 2, max = 2})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, wtf({id = ArtT1[math.random(#ArtT1)], min = 1, max = 1}, {id = BannerT1[math.random(#BannerT1)], min = 1, max = 1}, {id = JewelT1town[math.random(#JewelT1town)], min = 1, max = 1}))
        table.insert(rewardItems, ili({id = TalismanT1[math.random(#TalismanT1)], min = 1, max = 1}, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1}))
    elseif Type == 'guard' and Zone == 'townResp' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 2})
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 2})
        table.insert(rewardItems, {id = smallValuable[math.random(#smallValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})

    elseif Type == 'ruins' and Zone == 'StartZone' then
        table.insert(rewardItems, wtf({id = ArtT1[math.random(#ArtT1)], min = 1, max = 1}, {id = BannerT1[math.random(#BannerT1)], min = 1, max = 1}, {id = JewelT1town[math.random(#JewelT1town)], min = 1, max = 1}))
    
    elseif Type == 'stack1' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
    elseif Type == 'stack1.2' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = smallValuable[math.random(#smallValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
    elseif Type == 'stack1.3' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g000ig5084', min = 1, max = 1}) -- scroll gift
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack1.4' and Zone == 'startZone' then
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack1.5' and Zone == 'startZone' then
        table.insert(rewardItems, {id = smallballmana[math.random(#smallballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
    elseif Type == 'stack1.6' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
    elseif Type == 'stack1.7' and Zone == 'startZone' then
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack1.8' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack1.9' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
    elseif Type == 'stack1.10' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g001ig0486', min = 1, max = 1}) -- 50 all mana
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
    elseif Type == 'stack1.11' and Zone == 'startZone' then
        table.insert(rewardItems, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = smallballmana[math.random(#smallballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack2.1' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
    elseif Type == 'stack2.2' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = mediumValuable[math.random(#smallValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollDmgT1[math.random(#scrollDmgT1)], min = 1, max = 1})
    elseif Type == 'stack2.3' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = smallballmana[math.random(#smallballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack2.4' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1 })
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
    elseif Type == 'stack2.5' and Zone == 'startZone' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        if dropChance(35) then
            table.insert(rewardItems, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1})
        end
        
    elseif Type == 'bags' and Zone == 'StartZone' then
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0486', min = 1, max = 1})
       
    elseif Type == 'merchants' and Zone == 'StartZone' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 3, max = 3})
        table.insert(rewardItems, {id = 'g000ig0005', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g001ig0378', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g000ig0006', min = 4, max = 4})
        table.insert(rewardItems, {id = Wand[math.random(#Wand)], min = 1, max = 1})
        table.insert(rewardItems, {id = Wand[math.random(#Wand)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollDmgT1[math.random(#scrollDmgT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = TalismanT1[math.random(#TalismanT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = TalismanT1[math.random(#TalismanT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = TalismanSummont1[math.random(#TalismanSummont1)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowPermanent[math.random(#LowPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowPermanent[math.random(#LowPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = AuraPermanentLow[math.random(#AuraPermanentLow)], min = 1, max = 1})

    elseif Type == 'guard' and Zone == 'merchantsResp' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})

        ---- GO Resp to smeja ----
    elseif Type == 'guardResp' and Zone == 'GOtosmeja' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 2})
        table.insert(rewardItems, {id = Wand[math.random(#Wand)], min = 1, max = 1})
        table.insert(rewardItems, {id = Permanentskill[math.random(#Permanentskill)], min = 1, max = 1})        
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = TalismanSummont1[math.random(#TalismanSummont1)], min = 1, max = 1})
        if dropChance(35) then
            table.insert(rewardItems, {id = TravelT1[math.random(#TravelT1)], min = 1, max = 1})
        end	

        ---- GO Resp to Center ----
    elseif Type == 'guardResp' and Zone == 'GOtoCenter' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0001', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0018', min = 2, max = 2})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = AuraPermanentHigh[math.random(#AuraPermanentHigh)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighPermanent[math.random(#HighPermanent)], min = 1, max = 1})

        ---- ---- Smeja ---- ----
    elseif Type == 'townt2' and Zone == 'zonesmeja' then
        table.insert(rewardItems, rnditem == 1 and {id = ArtT2[math.random(#ArtT2)]} or rnditem == 2 and {id = BannerT2[math.random(#BannerT2)]} or rnditem == 3 and {id = JewelT2[math.random(#JewelT2)]} or {id = TravelT2[math.random(#TravelT2)]})
        table.insert(rewardItems, {id = 'g000ig0001', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0005', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = smallValuable[math.random(#smallValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumOrbs[math.random(#mediumOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
    elseif Type == 'guardtownt2' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0530', min = 1, max = 1}) -- Р В±Р В°Р Р…Р С”Р В° Р Р…Р В° РЎвЂљР В°Р В»Р С‘Р С”Р С‘
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})

    elseif Type == 'ruins' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = TalismanT2[math.random(#TalismanT2)], min = 1, max = 1})
    elseif Type == 'ruins2' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = JewelT2[math.random(#JewelT2)], min = 1, max = 1})

    elseif Type == 'merchants' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 3, max = 3})
        table.insert(rewardItems, {id = 'g000ig0005', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g001ig0378', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g000ig0006', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
        -- table.insert(rewardItems, {id = ArtT1[math.random(#ArtT1)], min = 1, max = 1})
        for i = 1,2 do
            local a = math.random(1, #ArtT1)
            table.insert(rewardItems, {id = ArtT1[a], min = 1, max = 1})
            table.remove(ArtT1, a)
        end
        -- table.insert(rewardItems, {id = ArtT2[math.random(#ArtT2)], min = 1, max = 1})
        for i = 1,2 do
            a = math.random(1, #ArtT2)
            table.insert(rewardItems, {id = ArtT2[a], min = 1, max = 1})
            table.remove(ArtT2, a)
        end
        -- table.insert(rewardItems, {id = BannerT1[math.random(#BannerT1)], min = 1, max = 1 })
        for i = 1,2 do
            b = math.random(1, #BannerT1)
            table.insert(rewardItems, {id = BannerT1[b], min = 1, max = 1})
            table.remove(BannerT1, b)
        end
        -- table.insert(rewardItems, {id = BannerT2[math.random(#BannerT2)], min = 1, max = 1 })
        for i = 1,2 do
            b = math.random(1, #BannerT2)
            table.insert(rewardItems, {id = BannerT2[b], min = 1, max = 1})
            table.remove(BannerT2, b)
        end
        -- table.insert(rewardItems, {id = TravelT2[math.random(#TravelT2)], min = 1, max = 1 })
        for i = 1,2 do
            t = math.random(1, #TravelT1)
            table.insert(rewardItems, {id = TravelT1[t], min = 1, max = 1})
            table.remove(TravelT1, t)
        end
        for i = 1,1 do
            t = math.random(1, #TravelT2)
            table.insert(rewardItems, {id = TravelT2[t], min = 1, max = 1})
            table.remove(TravelT2, t)
        end
        table.insert(rewardItems, {id = JewelT1[math.random(#JewelT1)], min = 1, max = 1})
        
        -- table.insert(rewardItems, {id = JewelT2[math.random(#JewelT2)], min = 1, max = 1})
        for i = 1,3 do
            j = math.random(1, #JewelT2)
            table.insert(rewardItems, {id = JewelT2[j], min = 1, max = 1})
            table.remove(JewelT2, j)
        end
        
        table.insert(rewardItems, {id = Wand[math.random(#Wand)], min = 1, max = 1})
        table.insert(rewardItems, {id = CurseOrbs[math.random(#CurseOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = RezistOrbs[math.random(#RezistOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumOrbs[math.random(#mediumOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirPermanentDot[math.random(#ElexirPermanentDot)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = Permanentskill[math.random(#Permanentskill)], min = 1, max = 1})

    elseif Type == 'guard' and Zone == 'merchantsP' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 2, max = 2})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})

    elseif Type == 'guard' and Zone == 'mageP' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 2})
        table.insert(rewardItems, {id = mediumballmana[math.random(#smallballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})

    elseif Type == 'stack1' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
    elseif Type == 'stack1.2' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = smallValuable[math.random(#smallValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
    elseif Type == 'stack1.3' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumballmana[math.random(#smallballmana)], min = 1, max = 1})
    elseif Type == 'stack1.4' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
    elseif Type == 'stack1.5' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        
    elseif Type == 'stack2.1' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = mediumValuable[math.random(#mediumValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
    elseif Type == 'stack2.2' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1 })
    elseif Type == 'stack2.3' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack2.4' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0486', min = 1, max = 1}) -- 50 all mana
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
    elseif Type == 'stack2.5' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumballmana[math.random(#mediumballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        
    elseif Type == 'stack3.1' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
    elseif Type == 'stack3.2' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack3.3' and Zone == 'zonesmeja' then
        table.insert(rewardItems, {id = LowPermanent[math.random(#LowPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})

    elseif Type == 'bags' and Zone == 'zonasmeja' then
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = smallValuable[math.random(#smallValuable)], min = 1, max = 1})
        if dropChance(35) then
            table.insert(rewardItems, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1})
        end
    elseif Type == 'bags2' and Zone == 'zonasmeja' then
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})


        ---- GO smeja to LR ----
    elseif Type == 'guardsmeja' and Zone == 'GOtoLRCenter' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 2})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 2})
        table.insert(rewardItems, wtf({id = ArtT2[math.random(#ArtT2)], min = 1, max = 1}, {id = BannerT2[math.random(#BannerT2)], min = 1, max = 1}, {id = JewelT2[math.random(#JewelT2)], min = 1, max = 1}))
        table.insert(rewardItems, {id = MediumElexir[math.random(#smallValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = bigValuable[math.random(#bigValuable)], min = 1, max = 1})
        table.insert(rewardItems, {id = bigballmana[math.random(#bigballmana)], min = 1, max = 1})
        table.insert(rewardItems, ili({id = AuraPermanentLow[math.random(#AuraPermanentLow)], min = 1, max = 1}, {id = LowPermanent[math.random(#LowPermanent)], min = 1, max = 1}))

        ---- ZoneLRCenter ----
    elseif Type == 'townt3' and Zone == 'ZoneLRCenter' then
        table.insert(rewardItems, rnditem == 1 and {id = ArtT2[math.random(#ArtT2)]} or rnditem == 2 and {id = BannerT2[math.random(#BannerT2)]} or rnditem == 3 and {id = JewelT2[math.random(#JewelT2)]} or {id = TravelT2[math.random(#TravelT2)]})
        table.insert(rewardItems, rnditem == 1 and {id = ArtT2[math.random(#ArtT2)]} or rnditem == 2 and {id = BannerT2[math.random(#BannerT2)]} or rnditem == 3 and {id = JewelT2[math.random(#JewelT2)]} or {id = TravelT2[math.random(#TravelT2)]})
        table.insert(rewardItems, {id = 'g000ig0001', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0006', min = 2, max = 2})
        table.insert(rewardItems, {id = mediumballmana[math.random(#smallballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = Permanentskill[math.random(#Permanentskill)], min = 1, max = 1})        
        table.insert(rewardItems, {id = MediumPermanent[math.random(#scrollT2)]})

    elseif Type == 'guardt3' and Zone == 'ZoneLRCenter' then
        table.insert(rewardItems, ili({id = TalismanT2[math.random(#TalismanT2)], min = 1, max = 1}, {id = mediumOrbs[math.random(#mediumOrbs)], min = 1, max = 1}))
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)]})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)]})
        table.insert(rewardItems, {id = 'g001ig0378', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})

    elseif Type == 'ruins' and Zone == 'ZoneLRCenter' then
        table.insert(rewardItems, {id = LowPermanent[math.random(#LowPermanent)], min = 1, max = 1})
    elseif Type == 'ruins2' and Zone == 'ZoneLRCenter' then
        table.insert(rewardItems, {id = AuraPermanentLow[math.random(#AuraPermanentLow)], min = 1, max = 1})
        
    elseif Type == 'merchants' and Zone == 'ZoneLRCenter' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 3, max = 3})
        table.insert(rewardItems, {id = 'g000ig0005', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g001ig0378', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g000ig0006', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g000ig0018', min = 3, max = 3})
        -- table.insert(rewardItems, {id = ArtT3[math.random(#ArtT3)], min = 1, max = 1})
        for i = 1,4 do
            a = math.random(1, #ArtT3)
            table.insert(rewardItems, {id = ArtT3[a], min = 1, max = 1})
            table.remove(ArtT3, a)
        end
        -- table.insert(rewardItems, {id = BannerT3[math.random(#BannerT3)], min = 1, max = 1 })
        for i = 1,4 do
            b = math.random(1, #BannerT3)
            table.insert(rewardItems, {id = BannerT3[b], min = 1, max = 1})
            table.remove(BannerT3, b)
        end
        -- table.insert(rewardItems, {id = TravelT3[math.random(#TravelT3)], min = 1, max = 1 })
        for i = 1,2 do
            t = math.random(1, #TravelT3)
            table.insert(rewardItems, {id = TravelT3[t], min = 1, max = 1})
            table.remove(TravelT3, t)
        end
        -- table.insert(rewardItems, {id = JewelT3[math.random(#JewelT3)], min = 1, max = 1})
        for i = 1,3 do
            j = math.random(1, #JewelT3)
            table.insert(rewardItems, {id = JewelT3[j], min = 1, max = 1})
            table.remove(JewelT3, j)
        end
        
        table.insert(rewardItems, {id = Wand2[math.random(#Wand2)], min = 1, max = 1})
        table.insert(rewardItems, {id = Wand2[math.random(#Wand2)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT3[math.random(#scrollT3)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT3[math.random(#scrollT3)], min = 1, max = 1})
        table.insert(rewardItems, {id = CurseOrbs[math.random(#CurseOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = CurseOrbs[math.random(#CurseOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = RezistOrbs[math.random(#RezistOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = RezistOrbs[math.random(#RezistOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumOrbs[math.random(#mediumOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumOrbs[math.random(#mediumOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = strongOrbs[math.random(#strongOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = strongOrbs[math.random(#strongOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = strongOrbs2[math.random(#strongOrbs2)], min = 1, max = 1})
        table.insert(rewardItems, {id = strongOrbs2[math.random(#strongOrbs2)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1}) 
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirPermanentDot[math.random(#ElexirPermanentDot)], min = 1, max = 1})
        table.insert(rewardItems, {id = AuraPermanentLow[math.random(#AuraPermanentLow)], min = 1, max = 1})
        table.insert(rewardItems, {id = AuraPermanentHigh[math.random(#AuraPermanentHigh)], min = 1, max = 1})
        table.insert(rewardItems, {id = TalismanT2[math.random(#TalismanT2)], min = 1, max = 1})

    elseif Type == 'guard' and Zone == 'merchantLR' then
        table.insert(rewardItems, {id = bigballmana[math.random(#bigballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = bigValuable[math.random(#bigValuable)], min = 1, max = 1})

    elseif Type == 'stack3' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
    elseif Type == 'stack3.2' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
    elseif Type == 'stack3.3' and Zone == 'LR' then
        table.insert(rewardItems, {id = smallballmana[math.random(#smallballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
    elseif Type == 'stack3.4' and Zone == 'LR' then
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack3.5' and Zone == 'LR' then
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
    elseif Type == 'stack3.6' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = smallValuable[math.random(#smallValuable)], min = 1, max = 1})
    elseif Type == 'stack3.7' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g000ig5068', min = 1, max = 1}) -- scroll shadow
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack3.8' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumValuable[math.random(#mediumValuable)], min = 1, max = 1})
    elseif Type == 'stack3.9' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = Wand2[math.random(#Wand2)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1 })
    elseif Type == 'stack3.10' and Zone == 'LR' then
        table.insert(rewardItems, {id = LowPermanent[math.random(#LowPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0084', min = 1, max = 1}) -- scroll flooding
       
    elseif Type == 'stack4.1' and Zone == 'LR' then
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack4.2' and Zone == 'LR' then
        table.insert(rewardItems, {id = AuraPermanentLow[math.random(#AuraPermanentLow)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
    elseif Type == 'stack4.3' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})

    elseif Type == 'bags' and Zone == 'LR' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = smallballmana[math.random(#smallballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})


        ---- GO LR to Center ----
    elseif Type == 'guardLRCenter' and Zone == 'GOtoCenter' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0006', min = 3, max = 3})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 2})
        table.insert(rewardItems, {id = ArtT4[math.random(#ArtT4)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = CurseOrbs[math.random(#CurseOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})


                                                ---- Center ----
    elseif Type == 'townt5' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 2})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = AuraPermanentHigh[math.random(#AuraPermanentHigh)], min = 1, max = 1})
        table.insert(rewardItems, rnditem == 1 and {id = ArtT5[math.random(#ArtT5)]} or rnditem == 2 and {id = BannerT4[math.random(#BannerT4)]} or rnditem == 3 and {id = JewelT4[math.random(#JewelT4)]} or {id = TravelT3[math.random(#TravelT3)]})

    elseif Type == 'guard' and Zone == 'townt5' then
        table.insert(rewardItems, {id = 'g000ig0018', min = 2, max = 2})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT3[math.random(#scrollT3)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollDmgT2[math.random(#scrollDmgT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})


    elseif Type == 'ruins' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = ArtT3[math.random(#ArtT3)], min = 1, max = 1})
    elseif Type == 'ruins2' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = JewelT3[math.random(#JewelT3)], min = 1, max = 1})

    elseif Type == 'merchants' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 3, max = 3})
        table.insert(rewardItems, {id = 'g000ig0005', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g001ig0378', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g000ig0006', min = 4, max = 4})
        table.insert(rewardItems, {id = 'g000ig0018', min = 2, max = 2})
        -- table.insert(rewardItems, {id = ArtT5[math.random(#ArtT5)], min = 1, max = 1})
        for i = 1,3 do
            a = math.random(1, #ArtT5)
            table.insert(rewardItems, {id = ArtT5[a], min = 1, max = 1})
            table.remove(ArtT3, a)
        end
        -- table.insert(rewardItems, {id = ArtT4[math.random(#ArtT4)], min = 1, max = 1})
        for i = 1,3 do
            a = math.random(1, #ArtT4)
            table.insert(rewardItems, {id = ArtT4[a], min = 1, max = 1})
            table.remove(ArtT4, a)
        end
        -- table.insert(rewardItems, {id = ArtT3[math.random(#ArtT3)], min = 1, max = 1})
        for i = 1,2 do
            a = math.random(1, #ArtT3)
            table.insert(rewardItems, {id = ArtT3[a], min = 1, max = 1})
            table.remove(ArtT3, a)
        end
        -- table.insert(rewardItems, {id = BannerT4[math.random(#BannerT4)], min = 1, max = 1})
        for i = 1,3 do
            b = math.random(1, #BannerT4)
            table.insert(rewardItems, {id = BannerT4[b], min = 1, max = 1})
            table.remove(BannerT4, b)
        end
        -- table.insert(rewardItems, {id = BannerT3[math.random(#BannerT3)], min = 1, max = 1})
        for i = 1,2 do
            b = math.random(1, #BannerT3)
            table.insert(rewardItems, {id = BannerT3[b], min = 1, max = 1})
            table.remove(BannerT3, b)
        end
        -- table.insert(rewardItems, {id = TravelT3[math.random(#TravelT3)], min = 1, max = 1})
        for i = 1,2 do
            t = math.random(1, #TravelT3)
            table.insert(rewardItems, {id = TravelT3[t], min = 1, max = 1})
            table.remove(TravelT3, t)
        end
        -- table.insert(rewardItems, {id = TravelT2[math.random(#TravelT2)], min = 1, max = 1})
        for i = 1,1 do
            t = math.random(1, #TravelT2)
            table.insert(rewardItems, {id = TravelT2[a], min = 1, max = 1})
            table.remove(TravelT2, t)
        end
        -- table.insert(rewardItems, {id = JewelT4[math.random(#JewelT4)], min = 1, max = 1})
        for i = 1,2 do
            j = math.random(1, #JewelT4)
            table.insert(rewardItems, {id = JewelT4[j], min = 1, max = 1})
            table.remove(JewelT4, j)
        end
        -- table.insert(rewardItems, {id = JewelT3[math.random(#JewelT3)], min = 1, max = 1})
        for i = 1,2 do
            j = math.random(1, #JewelT3)
            table.insert(rewardItems, {id = JewelT3[j], min = 1, max = 1})
            table.remove(JewelT3, j)
        end
        table.insert(rewardItems, {id = Wand3[math.random(#Wand3)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirPermanentProtected[math.random(#ElexirPermanentProtected)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirPermanentProtected[math.random(#ElexirPermanentProtected)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirPermanentDot[math.random(#ElexirPermanentDot)], min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirPermanentDot[math.random(#ElexirPermanentDot)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT3[math.random(#scrollT3)], min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT3[math.random(#scrollT3)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumPermanent[math.random(#MediumPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumPermanent[math.random(#MediumPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighPermanent[math.random(#HighPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = HighPermanent[math.random(#HighPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = Permanentskill[math.random(#Permanentskill)], min = 1, max = 1})
        table.insert(rewardItems, {id = Permanentskill[math.random(#Permanentskill)], min = 1, max = 1})
        table.insert(rewardItems, {id = CurseOrbs[math.random(#CurseOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = CurseOrbs[math.random(#CurseOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = RezistOrbs[math.random(#RezistOrbs)], min = 1, max = 1})
        table.insert(rewardItems, {id = RezistOrbs[math.random(#RezistOrbs)], min = 1, max = 1})

    elseif Type == 'guard' and Zone == 'RM' then
        table.insert(rewardItems, {id = 'g001ig0151', min = 1, max = 1}) -- 100 all mana
    
    elseif Type == 'stack3.1' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = smallValuable[math.random(#smallValuable)], min = 1, max = 1})
    elseif Type == 'stack3.2' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = smallballmana[math.random(#smallballmana)], min = 1, max = 1})
    elseif Type == 'stack3.3' and Zone == 'LZoneCenterR' then
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
    elseif Type == 'stack3.4' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
    
    elseif Type == 'stack4.1' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = mediumValuable[math.random(#mediumValuable)], min = 1, max = 1})
    elseif Type == 'stack4.2' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = mediumballmana[math.random(#mediumballmana)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
    elseif Type == 'stack4.3' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
    elseif Type == 'stack4.4' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT1[math.random(#scrollT1)], min = 1, max = 1})
    elseif Type == 'stack4.5' and Zone == 'LZoneCenterR' then
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = weakOrbs[math.random(#weakOrbs)], min = 1, max = 1})
    elseif Type == 'stack4.6' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = HighElexir[math.random(#HighElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0180', min = 2, max = 2})
    
    elseif Type == 'stack5.1' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0180', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
    elseif Type == 'stack5.2' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack5.3' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack5.4' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
    elseif Type == 'stack5.5' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0001', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack5.6' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
    elseif Type == 'stack5.7' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollDmgT1[math.random(#scrollDmgT1)], min = 1, max = 1})
    
    elseif Type == 'stack6' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = scrollDmgT3[math.random(#scrollDmgT3)], min = 1, max = 1})
        table.insert(rewardItems, {id = TalismanT3[math.random(#TalismanT3)], min = 1, max = 1})
        table.insert(rewardItems, {id = MediumPermanent[math.random(#MediumPermanent)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})

    elseif Type == 'bags' and Zone == 'ZoneCenter' then
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirProtection[math.random(#ElexirProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = LowElexir[math.random(#LowElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0006', min = 1, max = 1})
        table.insert(rewardItems, {id = MediumElexir[math.random(#MediumElexir)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = scrollT2[math.random(#scrollT2)], min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0018', min = 1, max = 1})
        table.insert(rewardItems, {id = ElexirDotProtection[math.random(#ElexirDotProtection)], min = 1, max = 1})
        table.insert(rewardItems, {id = mediumOrbs[math.random(#mediumOrbs)], min = 1, max = 1})
    
    elseif Type == 'bags' and Zone == 'zonerm' then
        table.insert(rewardItems, {id = 'g001ig0378', min = 1, max = 1})
        table.insert(rewardItems, {id = 'g000ig0005', min = 1, max = 1})
        end
        return rewardItems
    end

function getStartingZone(zoneId, playerRace, playerRaceX, zoneSize)
    local startelexirprotection = {'g000ig0022', 'g000ig0021', 'g000ig0023', 'g000ig0024', 'g001ig0125', 'g001ig0036'}
    local startelexirdotprotection = {'g001ig0329', 'g001ig0351', 'g001ig0343', 'g001ig0341'}
    local StartItem = {
        {id = 'g000ig0001', min = 4, max = 4},
        {id = 'g000ig0006', min = 4, max = 4},
        {id = 'g000ig0005', min = 3, max = 3},
        {id = 'g001ig0378', min = 2, max = 2},
        {id = 'g001ig0180', min = 2, max = 2},
        {id = 'g000ig0008', min = 1, max = 1},
        ili({id = 'g000ig0011', min = 1, max = 1}, {id = 'g000ig0008', min = 1, max = 1}),
        ili({id = 'g000ig0002', min = 1, max = 1}, {id = 'g000ig0014', min = 1, max = 1}),
        ili(ili({id = 'g001ig0178', min = 1, max = 1}, {id = 'g001ig0472', min = 1, max = 1}), ili({id = 'g001ig0192', min = 1, max = 1}, {id = 'g001ig0473', min = 1, max = 1})),
    }
    table.insert(StartItem, wtf({id = 'g000ig7001', min = 1, max = 1}, {id = 'g001ig0431', min = 1, max = 1}, {id = 'g000ig7002', min = 1, max = 1}))
        for i = 1,3 do
            x = math.random(1, #startelexirprotection)
            table.insert(StartItem, {id = startelexirprotection[x], min = 1, max = 1})
            table.remove(startelexirprotection, x)
        end
        for i = 1,2 do
            x = math.random(1, #startelexirdotprotection)
            table.insert(StartItem, {id = startelexirdotprotection[x], min = 1, max = 1})
            table.remove(startelexirdotprotection, x)
        end

    if playerRace == Race.Human then
        table.insert(StartItem, {id = 'g001ig0146', min = 1, max = 1})
    elseif playerRace == Race.Elf then
        table.insert(StartItem, {id = 'g001ig0150', min = 1, max = 1})
    elseif playerRace == Race.Heretic then
        table.insert(StartItem, {id = 'g001ig0147', min = 1, max = 1})
    elseif playerRace == Race.Dwarf then
        table.insert(StartItem, {id = 'g001ig0148', min = 1, max = 1})
    elseif playerRace == Race.Undead then
        table.insert(StartItem, {id = 'g001ig0149', min = 1, max = 1})
    end
    return {
        id = zoneId,
        type = Zone.PlayerStart,
        race = playerRace,
        raceX = playerRaceX,
        size = zoneSize,
        border = Border.SemiOpen,
        capital = {
                    garrison = {
                        value = { min = 50, max = 50 },
                        subraceTypes = {getNativeSubraces(playerRace)},
                        loot = {items = StartItem}
                    },
                        gapMask = 9,
                        spells = CapitalSpell(playerRace)
                    },
        mines = getPlayerZoneMines(playerRace, playerRaceX),
        towns = {getTownResp(1, getGuard(1, getReward('guard', 'townResp')), getReward('town', 'StartZone'))},
        ruins = {getRuins(1, {min = 300, max = 300}, getReward('ruins', 'StartZone')),
                    getRuins(1, {min = 350, max = 350}, getReward('ruins', 'StartZone'))},
        merchants = {{goods = {items = getReward('merchants', 'StartZone')},
                      guard = getGuard(1, getReward('guard', 'merchantsResp'))}},
        stacks = {getStack(1, 1, getReward('stack1', 'startZone')), getStack(1, 1, getReward('stack1.2', 'startZone')), getStack(1, 1, getReward('stack1.3', 'startZone')),
                    getStack(1, 1, getReward('stack1.4', 'startZone')),
                    getStack(1, 1, getReward('stack1.5', 'startZone')), getStack(1, 1, getReward('stack1.6', 'startZone')), getStack(1, 1, getReward('stack1.7', 'startZone')),
                    getStack(1, 1, getReward('stack1.8', 'startZone')),
                    getStack(1, 1, getReward('stack1.9', 'startZone')), getStack(1, 1, getReward('stack1.10', 'startZone')),   getStack(1, 1, getReward('stack1.11', 'startZone')),
                    getStack(1.5, 1, getReward('stack2.1', 'startZone')),
                    getStack(1.5, 1, getReward('stack2.2', 'startZone')), getStack(1.5, 1, getReward('stack2.3', 'startZone')), getStack(1.5, 1, getReward('stack2.4', 'startZone')),
                    getStack(1.5, 1, getReward('stack2.5', 'startZone')),
           },
        bags =  getBags(4, getReward('bags', 'StartZone'))
    }
end

function getZoneLeftP1(zoneId, playerRace, playerRaceX, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
        race = playerRace,
        raceX = playerRaceX,
		size = zoneSize,
        border = Border.Open,
        mines = getMinesZoneP(playerRace, playerRaceX),
        towns = {getTown(2, getGuard(3, getReward('guardtownt2', 'zonesmeja')), getReward('townt2', 'zonesmeja'))},
        ruins = {getRuins(2, {min = 350, max = 400}, getReward('ruins', 'zonesmeja')),
                    getRuins(2, {min = 400, max = 400}, getReward('ruins2', 'zonesmeja'))},
        mages = {getMagicTower(1, guardrnd(2, getReward('guard', 'mageP')))},
        merchants = {{goods = {items = getReward('merchants', 'zonesmeja')},
                    guard = guardrnd(3, getReward('guard', 'merchantsP'))}},
        stacks = {getStack(1.5, 1, getReward('stack1', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.2', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.3', 'zonesmeja')), 
                    getStack(1.5, 1, getReward('stack1.4', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.5', 'zonesmeja')),
                    getStack(2, 1, getReward('stack2.1', 'zonesmeja')), getStack(2, 1, getReward('stack2.2', 'zonesmeja')), getStack(2, 1, getReward('stack2.3', 'zonesmeja')), 
                    getStack(2, 1, getReward('stack2.4', 'zonesmeja')), getStack(2, 1, getReward('stack2.5', 'zonesmeja')), 
                    getStack(3, 1, getReward('stack3.1', 'zonesmeja')), getStack(3, 1, getReward('stack3.2', 'zonesmeja')),
                    getStack(3, 1, getReward('stack3.3', 'zonesmeja'))
                    },
        bags = getBags(4, getReward('bags', 'zonasmeja'))}
end

function getZoneLeftCenter(zoneId, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
		size = zoneSize,
        mines = getLRMines(),
        towns = {getTown(3, getGuard(4, getReward('guardt3', 'ZoneLRCenter')), getReward('townt3', 'ZoneLRCenter'))},
        ruins = {getRuins(3, {min = 400, max = 450}, getReward('ruins', 'ZoneLRCenter')),
                getRuins(4, {min = 500, max = 500}, getReward('ruins2', 'ZoneLRCenter'))},
        merchants = {{goods = {items = getReward('merchants', 'ZoneLRCenter')},
                    guard = getGuard(3, getReward('guard', 'merchantLR'))}},
        mercenaries = {getMercenariesleft(getGuard(3))},
        stacks = {getStack(3, 1, getReward('stack3', 'LR')), getStack(3, 1, getReward('stack3.2', 'LR')), getStack(3, 1, getReward('stack3.3', 'LR')), getStack(3, 1, getReward('stack3.4', 'LR')), 
                    getStack(3, 1, getReward('stack3.5', 'LR')), getStack(3, 1, getReward('stack3.6', 'LR')), getStack(3, 1, getReward('stack3.7', 'LR')), getStack(3, 1, getReward('stack3.8', 'LR')), 
                    getStack(3, 1, getReward('stack3.9', 'LR')), getStack(3, 1, getReward('stack3.10', 'LR')), 
                    getStack(3, 1, getReward('stack4.1', 'LR')), getStack(3, 1, getReward('stack4.2', 'LR')), getStack(3, 1, getReward('stack4.3', 'LR'))
                    },
        bags = getBags(4, getReward('bags', 'LR'))}
end

function getZoneLeftP2(zoneId, playerRace, playerRaceX, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
		size = zoneSize,
        border = Border.Open,
        race = playerRace,
        raceX = playerRaceX,
        mines = getMinesZoneP(playerRace, playerRaceX),
        towns = {getTown(2, getGuard(3, getReward('guardtownt2', 'zonesmeja')), getReward('townt2', 'zonesmeja'))},
        ruins = {getRuins(2, {min = 350, max = 400}, getReward('ruins', 'zonesmeja')),
                    getRuins(2, {min = 400, max = 400}, getReward('ruins2', 'zonesmeja'))},
        mages = {getMagicTower(1, guardrnd(2, getReward('guard', 'mageP')))},
        merchants = {{goods = {items = getReward('merchants', 'zonesmeja')},
                    guard = guardrnd(3, getReward('guard', 'merchantsP'))}},
        stacks = {getStack(1.5, 1, getReward('stack1', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.2', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.3', 'zonesmeja')), 
                    getStack(1.5, 1, getReward('stack1.4', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.5', 'zonesmeja')),
                    getStack(2, 1, getReward('stack2.1', 'zonesmeja')), getStack(2, 1, getReward('stack2.2', 'zonesmeja')), getStack(2, 1, getReward('stack2.3', 'zonesmeja')), 
                    getStack(2, 1, getReward('stack2.4', 'zonesmeja')), getStack(2, 1, getReward('stack2.5', 'zonesmeja')), 
                    getStack(3, 1, getReward('stack3.1', 'zonesmeja')), getStack(3, 1, getReward('stack3.2', 'zonesmeja')),
                    getStack(3, 1, getReward('stack3.3', 'zonesmeja'))
                    },
        bags = getBags(4, getReward('bags', 'zonasmeja'))}
end

function getZoneRightP4(zoneId, playerRaceX, playerRace, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
		size = zoneSize,
        border = Border.Open,
        race = playerRace,
        raceX = playerRaceX,
        mines = getMinesZoneP(playerRaceX, playerRace),
        towns = {getTown(2, getGuard(3, getReward('guardtownt2', 'zonesmeja')), getReward('townt2', 'zonesmeja'))},
        ruins = {getRuins(2, {min = 350, max = 400}, getReward('ruins', 'zonesmeja')),
                    getRuins(2, {min = 400, max = 400}, getReward('ruins2', 'zonesmeja'))},
        mages = {getMagicTower(1, guardrnd(2, getReward('guard', 'mageP')))},
        merchants = {{goods = {items = getReward('merchants', 'zonesmeja')},
                    guard = guardrnd(3, getReward('guard', 'merchantsP'))}},
        stacks = {getStack(1.5, 1, getReward('stack1', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.2', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.3', 'zonesmeja')), 
                    getStack(1.5, 1, getReward('stack1.4', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.5', 'zonesmeja')),
                    getStack(2, 1, getReward('stack2.1', 'zonesmeja')), getStack(2, 1, getReward('stack2.2', 'zonesmeja')), getStack(2, 1, getReward('stack2.3', 'zonesmeja')), 
                    getStack(2, 1, getReward('stack2.4', 'zonesmeja')), getStack(2, 1, getReward('stack2.5', 'zonesmeja')), 
                    getStack(3, 1, getReward('stack3.1', 'zonesmeja')), getStack(3, 1, getReward('stack3.2', 'zonesmeja')),
                    getStack(3, 1, getReward('stack3.3', 'zonesmeja'))
                    },
        bags = getBags(4, getReward('bags', 'zonasmeja'))}
end

function getZoneRightCenter(zoneId, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
		size = zoneSize,
        mines = getLRMines(),
        towns = {getTown(3, getGuard(4, getReward('guardt3', 'ZoneLRCenter')), getReward('townt3', 'ZoneLRCenter'))},
        ruins = {getRuins(3, {min = 400, max = 450}, getReward('ruins', 'ZoneLRCenter')),
                getRuins(4, {min = 500, max = 500}, getReward('ruins2', 'ZoneLRCenter'))},
        merchants = {{goods = {items = getReward('merchants', 'ZoneLRCenter')},
                    guard = getGuard(3, getReward('guard', 'merchantLR'))}},
        mercenaries = {getMercenariesright(getGuard(3))},
        stacks = {getStack(3, 1, getReward('stack3', 'LR')), getStack(3, 1, getReward('stack3.2', 'LR')), getStack(3, 1, getReward('stack3.3', 'LR')), getStack(3, 1, getReward('stack3.4', 'LR')), 
                    getStack(3, 1, getReward('stack3.5', 'LR')), getStack(3, 1, getReward('stack3.6', 'LR')), getStack(3, 1, getReward('stack3.7', 'LR')), getStack(3, 1, getReward('stack3.8', 'LR')), 
                    getStack(3, 1, getReward('stack3.9', 'LR')), getStack(3, 1, getReward('stack3.10', 'LR')), 
                    getStack(3, 1, getReward('stack4.1', 'LR')), getStack(3, 1, getReward('stack4.2', 'LR')), getStack(3, 1, getReward('stack4.3', 'LR'))
                    },
        bags = getBags(4, getReward('bags', 'LR'))}
end

function getZoneRightP3(zoneId, playerRaceX, playerRace, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
		size = zoneSize,
        border = Border.Open,
        race = playerRace,
        raceX = playerRaceX,
        mines = getMinesZoneP(playerRaceX, playerRace),
        towns = {getTown(2, getGuard(2, getReward('guardtownt2', 'zonesmeja')), getReward('townt2', 'zonesmeja'))},
        ruins = {getRuins(2, {min = 350, max = 400}, getReward('ruins', 'zonesmeja')),
                    getRuins(2, {min = 400, max = 400}, getReward('ruins2', 'zonesmeja'))},
        mages = {getMagicTower(1, guardrnd(2, getReward('guard', 'mageP')))},
        merchants = {{goods = {items = getReward('merchants', 'zonesmeja')},
                    guard = guardrnd(3, getReward('guard', 'merchantsP'))}},
        stacks = {getStack(1.5, 1, getReward('stack1', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.2', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.3', 'zonesmeja')), 
                    getStack(1.5, 1, getReward('stack1.4', 'zonesmeja')), getStack(1.5, 1, getReward('stack1.5', 'zonesmeja')),
                    getStack(2, 1, getReward('stack2.1', 'zonesmeja')), getStack(2, 1, getReward('stack2.2', 'zonesmeja')), getStack(2, 1, getReward('stack2.3', 'zonesmeja')), 
                    getStack(2, 1, getReward('stack2.4', 'zonesmeja')), getStack(2, 1, getReward('stack2.5', 'zonesmeja')), 
                    getStack(3, 1, getReward('stack3.1', 'zonesmeja')), getStack(3, 1, getReward('stack3.2', 'zonesmeja')),
                    getStack(3, 1, getReward('stack3.3', 'zonesmeja'))
                    },
        bags = getBags(4, getReward('bags', 'zonasmeja'))}
end

function getZoneCenter(zoneId, playerRace, playerRace2, playerRace3, playerRace4, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
		size = zoneSize,
        mines = getCenterMines(),
        towns = {getTown(5, getGuard(11, getReward('guard', 'townt5')), getReward('townt5', 'ZoneCenter'))},
        ruins = {getRuins(5, {min = 650, max = 650}, getReward('ruins', 'ZoneCenter')),
                getRuins(5, {min = 650, max = 650}, getReward('ruins2', 'ZoneCenter'))},
        mages = {getMagicTower(2, getGuard(3, getReward()))},
        merchants = {{goods = {items = getReward('merchants', 'ZoneCenter')},
                    guard = getGuard(4, getReward())}},
        resourceMarkets = getResourceMarket(getGuard(4, getReward('guard', 'RM'))),
        stacks = {getStack(3, 1, getReward('stack3.1', 'ZoneCenter')), getStack(3, 1, getReward('stack3.2', 'ZoneCenter')), getStack(3, 1, getReward('stack3.3', 'ZoneCenter')), getStack(3, 1, getReward('stack3.4', 'ZoneCenter')), 
                getStack(4, 1, getReward('stack4.1', 'ZoneCenter')), getStack(4, 1, getReward('stack4.2', 'ZoneCenter')), getStack(4, 1, getReward('stack4.3', 'ZoneCenter')),
                getStack(4, 1, getReward('stack4.4', 'ZoneCenter')), getStack(4, 1, getReward('stack4.5', 'ZoneCenter')), getStack(4, 1, getReward('stack4.6', 'ZoneCenter')),
                getStack(5, 1, getReward('stack5.1', 'ZoneCenter')), getStack(5, 1, getReward('stack5.2', 'ZoneCenter')), getStack(5, 1, getReward('stack5.3', 'ZoneCenter')), getStack(5, 1, getReward('stack5.4', 'ZoneCenter')), 
                getStack(5, 1, getReward('stack5.5', 'ZoneCenter')), getStack(5, 1, getReward('stack5.6', 'ZoneCenter')), getStack(5, 1, getReward('stack5.7', 'ZoneCenter')),
                getStack(6, 1, getReward('hlvl', 'ZoneCenter'))
                },
        mercenaries = {getMerC(getGuard(4), playerRace, playerRace2, playerRace3, playerRace4)},
        bags = getBags(4, getReward('bags', 'ZoneCenter'))
    }
end

function getZoneRM(zoneId, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
        size = zoneSize,
        border = Border.Open,
        stacks = {getStack (1.5, 3, getReward('stackrm', 'zonerm'))},
        bags =  getBags(1, getReward('bags', 'zonerm')),
        resourceMarkets = getRM(),
    }
end

function getZoneRM2(zoneId, zoneSize)
    return {
        id = zoneId,
        type = Zone.Treasure,
        size = zoneSize,
        border = Border.Open,
        stacks = {getStack (1.5, 3, getReward('stackrm', 'zonerm'))},
        bags =  getBags(1, getReward('bags', 'zonerm')),
        resourceMarkets = getRM(),
    }
end


local ZoneLeftP1ID = 0
local ZoneLeftCenterID = 1
local ZoneLeftP2ID = 2
local StartingZoneP2ID = 3
local ZoneRMid = 4
local StartingZoneP4ID = 5
local ZoneRightP4ID = 6
local ZoneRightCenterID = 7
local ZoneRightP3ID = 8
local StartingZoneP3ID = 9
local ZoneRM2id = 10
local StartingZoneP1ID = 11
local ZoneCenterID = 12


function getZones(races)

	local ZonePSize = 12
    local ZoneLRCenter = 14
    local startingZone = 12
    local ZoneCentersize = 24
    local ZoneRMsize = 3

    local zones = { }

    zones[1] = getZoneLeftP1(ZoneLeftP1ID, races[1], races[3], ZonePSize)
    zones[2] = getZoneLeftCenter(ZoneLeftCenterID, ZoneLRCenter)
    zones[3] = getZoneLeftP2(ZoneLeftP2ID, races[2], races[4], ZonePSize)
	zones[4] = getStartingZone(StartingZoneP2ID, races[2], races[4], startingZone)
    zones[5] = getZoneRM(ZoneRMid, ZoneRMsize)
    zones[6] = getStartingZone(StartingZoneP4ID, races[4], races[2], startingZone)
	zones[7] = getZoneRightP4(ZoneRightP4ID, races[4], races[2], ZonePSize)
	zones[8] = getZoneRightCenter(ZoneRightCenterID, ZoneLRCenter)
	zones[9] = getZoneRightP3(ZoneRightP3ID, races[3], races[1], ZonePSize)
	zones[10] = getStartingZone(StartingZoneP3ID, races[3], races[1], startingZone)
    zones[11] = getZoneRM2(ZoneRM2id, ZoneRMsize)
	zones[12] = getStartingZone(StartingZoneP1ID, races[1], races[3], startingZone)
	zones[13] = getZoneCenter(ZoneCenterID, races[1], races[2], races[3], races[4], ZoneCentersize)

    return zones
end

function getConnections()
    return {

		{from = 0, to = 1, guard = getGO(11, getReward('guardsmeja', 'GOtoLRCenter'))},

        {from = 1, to = 2, guard = getGO(11, getReward('guardsmeja', 'GOtoLRCenter'))},

        {from = 2, to = 3, guard = getGO(10, getReward('guardResp', 'GOtosmeja'))},


        {from = 3, to = 4},
        {from = 4, to = 5},

        {from = 3, to = 5},
  

        {from = 5, to = 6, guard = getGO(10, getReward('guardResp', 'GOtosmeja'))},

        {from = 6, to = 7, guard = getGO(11, getReward('guardsmeja', 'GOtoLRCenter'))},

        {from = 7, to = 8, guard = getGO(11, getReward('guardsmeja', 'GOtoLRCenter'))},

        {from = 8, to = 9, guard = getGO(10, getReward('guardResp', 'GOtosmeja'))},

        {from = 9, to = 11},
     

        {from = 9, to = 10},
        {from = 10, to = 11},
    

        {from = 11, to = 0, guard = getGO(10, getReward('guardResp', 'GOtosmeja'))},

        {from = 12, to = 9, guard = getGOrnd(12, getReward('guardResp', 'GOtoCenter'))},
        {from = 12, to = 11, guard = getGOrnd(12, getReward('guardResp', 'GOtoCenter'))},
        {from = 12, to = 1, guard = getGOrnd(12, getReward('guardResp', 'GOtoCenter'))},
        {from = 12, to = 3, guard = getGOrnd(12, getReward('guardResp', 'GOtoCenter'))},
        {from = 12, to = 5, guard = getGOrnd(12, getReward('guardResp', 'GOtoCenter'))},
        {from = 12, to = 7, guard = getGOrnd(12, getReward('guardResp', 'GOtoCenter'))},

	}
end

function getTemplateContents(races)
	return {
		zones = getZones(races),
        diplomacy = getDiplomacyRelations(races),
		connections = getConnections()
	}
end

template = {
    name = 'Double Trouble 1.2',
    description = 'Double Trouble 1.2 by iSkromny & Nexx, sMNS2, 72x72, 4 players, 2x2 \nTimer: First day: 480, next days: 360',
    minSize = 72,
    maxSize = 72,
    maxPlayers = 4,
    roads = 50,
    forest = 35,
    startingGold = 1200,
    startingNativeMana = 300,
    getContents = getTemplateContents,
    forbiddenSpells = {
        -- заклы
        'g000ss0173', -- Великий ужас
        'g000ss0027', -- Мореплавание
        'g000ss0124', -- Отсрочка неизбежного
        'g000ss0146', -- Создание горы
        'g000ss0175', -- Божественная мудрость
        'g000ss0149', -- Вампиризм
        'g000ss0200', -- Жатва
        'g000ss0159', -- Увечье
        'g000ss0091', -- Tempus Status
        'g000ss0053', -- Paraseus
        'g000ss0094', -- Псалом смерти
        'g000ss0099', -- Опутывание
        'g000ss0087', -- Ветер путешествий
        'g000ss0006', -- Ускорение
    },
        -- предметы
    forbiddenItems = {
        'g000ig3007', -- Коготь бетрезена
        'g001ig0388', -- Посох Войны
        'g000ig3018', -- Клинок сущего
        'g001ig0521', -- Зелье разоблачения
    },

    forbiddenUnits = {
        -- Фракционные герои-солдаты
        'g001uu0021', --Архимаг
        'g001uu0020', --Следопыт
        'g001uu0019', --Рыцарь на Пегасе
        'g001uu0022', --Архангел
        'g001uu0023', --Вор
        'g001uu0045', --Инженер
        'g001uu0044', --Королевский страж
        'g001uu0046', --Ученый
        'g070uu0003', --Ученый
        'g001uu0047', --Старейшина
        'g001uu0048', --Вор
        'g001uu0072', --Архидьявол
        'g070uu0004', --Архидьявол
        'g001uu0071', --Советник
        'g001uu0070', --Герцог
        'g001uu0073', --Баронесса
        'g001uu0074', --Вор
        'g001uu0098', --Королева личей
        'g070uu0001', --Носферату
        'g001uu0097', --Носферату
        'g001uu0096', --Рыцарь Смерти
        'g001uu0099', --Баньши
        'g001uu0100', --Вор
        'g001uu8010', --Дриада
        'g070uu0002', --Дриада
        'g001uu8009', --Вассал леса
        'g001uu8011', --Страж леса
        'g001uu8012', --Мудрец
        'g001uu8013', --Вор
     
        -- Фракционные призыватели-солдаты с большим кол-вом опыта
        'g000uu8185', -- Магистр стихий
        'g001uu7598', -- Теневидец
        'g001uu8242', -- Xозяин масок
        'g000uu8242', -- хозяин масок (лидер)
        'g000uu0164', -- Повелитель волков

        -- Фракционные хиллеры-солдаты с большим кол-вом опыта и просто хиллеры
        'g000uu0017', -- Аббатиса
        'g000uu8035', -- Вильсида
        'g002uu8039', -- Вердант
        'g000uu7570', -- Епископ
        'g000uu0012', -- Жрец
        'g000uu7569', -- Иерей
        'g000uu8264', -- Иерарх
        'g000uu0151', -- Прорицательница
        'g000uu0013', -- Священник
        'g000uu8214', -- Дриолисса
        'g000uu8034', -- Солнечная Танцовщица
        'g000uu0150', -- Патриарх
        'g003uu8039', -- Древо жизни
        'g003uu8038', -- Энт целитель
        'g000uu8235', -- Сильфида
        'g000uu2002', -- Целитель
        'g003uu8037', -- Священное древо
        'g001uu7614', -- Искатель рун
        'g000uu0016', -- Монахиня

        -- нейтральные лидеры с низкой неподкупностью 20%
        'g000uu5236', -- Гном
        'g000uu5117', -- Гоблин
        'g000uu5101', -- Крестьянин
        'g000uu8308', -- Молодой триббог
        'g000uu5130', -- Разбойник
        'g000uu7556', -- Гоблин-жгун
        'g000uu7533', -- Псина
        'g000uu7510', -- Птица рух лидер
        'g000uu7616', -- Гном упырь лидер
        'g000uu6004', -- Толстый бес л.
        'g000uu5201', -- Сквайр л.
        'g000uu7539', -- Колотун
        'g000uu7592', -- Торхот
        'g000uu7516', -- Энт Малый л.
        'g000uu5262', -- Сектант л.
        'g000uu7614', -- Искатель рун лидер
        'g000uu7553', -- Ведунья-лидер
        'g000uu7512', -- Скелет

        --Все нейтральные хиллеры с большим кол-вом опыта (лидеры и солдаты)
        'g000uu8287', -- Св.дерево л.
        'g000uu8288', -- Энт целитель л.
        'g000uu7519', -- Вердант л.
        'g000uu8215', -- Дриолисса л.
        'g000uu8266', -- Дроттар
        'g000uu8262', -- Знахарка л.
        'g000uu8289', -- Древо жизни л
        'g000uu7521', -- Целитель л.
        'g000uu5006', -- Великий Оракул
        'g000uu8222', -- Волхв л. бафер
        'g000uu8218', -- Волхв
        'g000uu7544', -- Настоятельница
        'g000uu8213', -- Гоблин-шаман
        'g001uu8262', -- Знахарка
        'g000uu2021', -- Проповедник
        'g000uu8223', -- Верховный некромант л. бафер
        'g000uu6107', -- Темный эльф-жрец
        'g000uu6007', -- Темный эльф-жрец (лидер)
        'g000uu7619', -- Слуга культа
        'g000uu8210', -- гибельный рой (лидер)
        'g000uu6116', -- мантикора
        'g000uu6016', -- мантикора лидер   
        'g000uu8265', -- дева пламени
        'g000uu8033', -- лесная дева
        'g000uu8133', -- лесная дева (лидер)
        'g000uu8217', -- Призрачный дракон л.
        'g000uu8216', -- Призрачный дракон
        'g000uu5022', -- Черный дракон
        'g000uu5122', -- Черный дракон л.
        'g000uu6118', -- королева эльфов
        'g000uu6018', -- королева эльфов (лидер)
        'g000uu8107', -- вестник мортис (лидер)
        'g000uu6114', -- Магистр-оккультист
        'g000uu6014', -- Магистр-оккультист (лидер)
        'g000uu6113', -- оккультист
        'g000uu6013', -- оккультист(лидер)
        'g000uu8203', -- повелитель теней
        'g000uu8204', -- повелитель теней (лидер)
        'g000uu8205', -- повелительница стихий 
        'g000uu8206', -- повелительница стихий (лидер)
        'g000uu0153', -- ученик элементалист
        'g001uu8303', -- черная вдова
        'g000uu8303', -- черная вдова (лидер)
        'g000uu8263', -- чернокнижница
        'g000uu2022', -- ламия
        'g000uu7528', -- мумификатор (лидер)
        'g000uu2007', -- мумификатор
        'g000uu2008', -- длань мортис
        'g000uu8318', -- длань мортис (лидер)
        'g000uu8220', -- карманница


        },
    
}
